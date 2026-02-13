import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/components/search_input.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/master/bloc/guru/guru_bloc.dart';
import 'package:webview_skops/presentation/master/pages/guru/guru_add_page.dart';
import 'package:webview_skops/presentation/master/widgets/guru_item.dart';

class GuruPage extends StatefulWidget {
  const GuruPage({super.key});

  @override
  State<GuruPage> createState() => _GuruPageState();
}

class _GuruPageState extends State<GuruPage> {
  final searchController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  Timer? _debounce;

  @override
  void initState() {
    scrollController.addListener(_onScroll);
    context.read<GuruBloc>().add(const GuruEvent.loadGuru());

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
      context.read<GuruBloc>().add(const GuruEvent.loadMore());
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
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: SearchInput(
          controller: searchController,
          onChanged: (value) {
            _debounce?.cancel();

            _debounce = Timer(const Duration(milliseconds: 400), () {
              if (value.length > 1) {
                context.read<GuruBloc>().add(GuruEvent.searchGuru(value));
              }
              if (value.isEmpty) {
                context.read<GuruBloc>().add(const GuruEvent.searchGuru(''));
              }
            });
          },
        ),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<GuruBloc>().add(const GuruEvent.refresh());
          },
          child: BlocBuilder<GuruBloc, GuruState>(
            builder: (context, state) {
              return state.when(
                initial: () =>
                    const Center(child: Text('Tarik untuk memuat data')),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (guru) {
                  if (guru.isEmpty) {
                    return const Center(child: Text('Tidak ada data guru'));
                  }
                  return ListView.separated(
                    controller: scrollController,
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                      bottom: 100,
                    ),
                    itemCount: guru.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      return GuruItem(data: guru[index]);
                    },
                  );
                },
                sukses: (guru) {
                  if (guru.isEmpty) {
                    return const Center(child: Text('Tidak ada data guru'));
                  }
                  return ListView.separated(
                    controller: scrollController,
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                      bottom: 100,
                    ),
                    itemCount: guru.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      return GuruItem(data: guru[index]);
                    },
                  );
                },
                success:
                    (
                      guru,
                      currentPage,
                      lastPage,
                      hasReachedMax,
                      isLoadingMore,
                    ) {
                      if (guru.isEmpty) {
                        return const Center(child: Text('Tidak ada data guru'));
                      }

                      return ListView.separated(
                        controller: scrollController,
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 16,
                          bottom: 100,
                        ),
                        itemCount: guru.length + (isLoadingMore ? 1 : 0),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 16),
                        itemBuilder: (context, index) {
                          if (index >= guru.length) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: CircularProgressIndicator(),
                              ),
                            );
                          }
                          return GuruItem(data: guru[index]);
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
                          context.read<GuruBloc>().add(
                            const GuruEvent.loadGuru(),
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
            screen: const AddGuruPage(),
            withNavBar: false,
          );
          if (result == true && mounted) {
            context.read<GuruBloc>().add(const GuruEvent.loadGuru());
          }
        },
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
