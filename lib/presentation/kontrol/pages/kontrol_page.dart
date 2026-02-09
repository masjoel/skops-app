import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/components/search_input.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/kontrol/bloc/kontrol/kontrol_bloc.dart';
import 'package:webview_skops/presentation/kontrol/pages/kontrol_add_page.dart';
import 'package:webview_skops/presentation/kontrol/widgets/kontrol_item.dart';

class KontrolPage extends StatefulWidget {
  const KontrolPage({super.key});

  @override
  State<KontrolPage> createState() => _KontrolPageState();
}

class _KontrolPageState extends State<KontrolPage> {
  final searchController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  Timer? _debounce;

  @override
  void initState() {
    scrollController.addListener(_onScroll);
    context.read<KontrolBloc>().add(const KontrolEvent.loadKontrol());

    super.initState();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    searchController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<KontrolBloc>().add(const KontrolEvent.loadMore());
    }
  }

  bool get _isBottom {
    if (!scrollController.hasClients) return false;
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
          backgroundColor:  Colors.blue.shade800,
        title: SearchInput(
          controller: searchController,
          onChanged: (value) {
            _debounce?.cancel();

            _debounce = Timer(const Duration(milliseconds: 400), () {
              if (value.length > 1) {
                context.read<KontrolBloc>().add(KontrolEvent.searchKontrol(value));
              }
              if (value.isEmpty) {
                context.read<KontrolBloc>().add(const KontrolEvent.searchKontrol(''));
              }
            });
          },
        ),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<KontrolBloc>().add(const KontrolEvent.refresh());
          },
          child: BlocBuilder<KontrolBloc, KontrolState>(
            builder: (context, state) {
              return state.when(
                initial: () =>
                    const Center(child: Text('Tarik untuk memuat data')),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (kontrol) {
                  if (kontrol.isEmpty) {
                    return const Center(child: Text('Tidak ada data kontrol'));
                  }
                  return ListView.separated(
                    controller: scrollController,
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                      bottom: 100,
                    ),
                    itemCount: kontrol.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      return KontrolItem(data: kontrol[index]);
                    },
                  );
                },
                sukses: (kontrol) {
                  if (kontrol.isEmpty) {
                    return const Center(child: Text('Tidak ada data kontrol'));
                  }
                  return ListView.separated(
                    controller: scrollController,
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                      bottom: 100,
                    ),
                    itemCount: kontrol.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      return KontrolItem(data: kontrol[index]);
                    },
                  );
                },
                success:
                    (
                      kontrol,
                      currentPage,
                      lastPage,
                      hasReachedMax,
                      isLoadingMore,
                    ) {
                      if (kontrol.isEmpty) {
                        return const Center(
                          child: Text('Tidak ada data kontrol'),
                        );
                      }

                      return ListView.separated(
                        controller: scrollController,
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 16,
                          bottom: 100,
                        ),
                        itemCount: kontrol.length + (isLoadingMore ? 1 : 0),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 16),
                        itemBuilder: (context, index) {
                          if (index >= kontrol.length) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: CircularProgressIndicator(),
                              ),
                            );
                          }
                          return KontrolItem(data: kontrol[index]);
                        },
                      );
                    },
                error: (message) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(message),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          context.read<KontrolBloc>().add(
                            const KontrolEvent.loadKontrol(),
                          );
                        },
                        child: const Text('Coba Lagi'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await PersistentNavBarNavigator.pushNewScreen(
            context,
            screen: const AddKontrolPage(),
            withNavBar: false,
          );
          if (result == true && mounted) {
            context.read<KontrolBloc>().add(const KontrolEvent.loadKontrol());
          }
        },
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
