import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/search_input.dart';
import 'package:webview_skops/presentation/rekap/bloc/rekap/rekap_bloc.dart';
import 'package:webview_skops/presentation/rekap/widgets/rekap_item.dart';

class RekapPage extends StatefulWidget {
  const RekapPage({super.key});

  @override
  State<RekapPage> createState() => _RekapPageState();
}

class _RekapPageState extends State<RekapPage> {
  final searchController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  Timer? _debounce;

  @override
  void initState() {
    scrollController.addListener(_onScroll);
    context.read<RekapBloc>().add(const RekapEvent.loadRekap());

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
      context.read<RekapBloc>().add(const RekapEvent.loadMore());
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
                context.read<RekapBloc>().add(RekapEvent.searchRekap(value));
              }
              if (value.isEmpty) {
                context.read<RekapBloc>().add(const RekapEvent.searchRekap(''));
              }
            });
          },
        ),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<RekapBloc>().add(const RekapEvent.refresh());
          },
          child: BlocBuilder<RekapBloc, RekapState>(
            builder: (context, state) {
              return state.when(
                initial: () =>
                    const Center(child: Text('Tarik untuk memuat data')),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (rekap) {
                  if (rekap.isEmpty) {
                    return const Center(child: Text('Tidak ada data rekap'));
                  }
                  return ListView.separated(
                    controller: scrollController,
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                      bottom: 100,
                    ),
                    itemCount: rekap.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      return RekapItem(data: rekap[index]);
                    },
                  );
                },
                sukses: (rekap) {
                  if (rekap.isEmpty) {
                    return const Center(child: Text('Tidak ada data rekap'));
                  }
                  return ListView.separated(
                    controller: scrollController,
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                      bottom: 100,
                    ),
                    itemCount: rekap.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      return RekapItem(data: rekap[index]);
                    },
                  );
                },
                success:
                    (
                      rekap,
                      currentPage,
                      lastPage,
                      hasReachedMax,
                      isLoadingMore,
                    ) {
                      if (rekap.isEmpty) {
                        return const Center(
                          child: Text('Tidak ada data rekap'),
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
                        itemCount: rekap.length + (isLoadingMore ? 1 : 0),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 16),
                        itemBuilder: (context, index) {
                          if (index >= rekap.length) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: CircularProgressIndicator(),
                              ),
                            );
                          }
                          return RekapItem(data: rekap[index]);
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
                          context.read<RekapBloc>().add(
                            const RekapEvent.loadRekap(),
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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     final result = await PersistentNavBarNavigator.pushNewScreen(
      //       context,
      //       screen: const AddKontrolPage(),
      //       withNavBar: false,
      //     );
      //     if (result == true && mounted) {
      //       context.read<RekapBloc>().add(const RekapEvent.loadRekap());
      //     }
      //   },
      //   foregroundColor: AppColors.white,
      //   backgroundColor: AppColors.primary,
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
