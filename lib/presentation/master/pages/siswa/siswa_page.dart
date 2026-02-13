import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/components/search_input.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/master/bloc/siswa/siswa_bloc.dart';
import 'package:webview_skops/presentation/master/pages/siswa/siswa_add_page.dart';
import 'package:webview_skops/presentation/master/widgets/siswa_item.dart';

class SiswaPage extends StatefulWidget {
  const SiswaPage({super.key});

  @override
  State<SiswaPage> createState() => _SiswaPageState();
}

class _SiswaPageState extends State<SiswaPage> {
  final searchController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  Timer? _debounce;

  @override
  void initState() {
    scrollController.addListener(_onScroll);
    context.read<SiswaBloc>().add(const SiswaEvent.loadSiswa());

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
      context.read<SiswaBloc>().add(const SiswaEvent.loadMore());
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
        backgroundColor: Colors.orange[50],
        title: SearchInput(
          controller: searchController,
          onChanged: (value) {
            _debounce?.cancel();

            _debounce = Timer(const Duration(milliseconds: 400), () {
              if (value.length > 1) {
                context.read<SiswaBloc>().add(SiswaEvent.searchSiswa(value));
              }
              if (value.isEmpty) {
                context.read<SiswaBloc>().add(const SiswaEvent.searchSiswa(''));
              }
            });
          },
        ),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<SiswaBloc>().add(const SiswaEvent.refresh());
          },
          child: BlocBuilder<SiswaBloc, SiswaState>(
            builder: (context, state) {
              return state.when(
                initial: () =>
                    const Center(child: Text('Tarik untuk memuat data')),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (siswa) {
                  if (siswa.isEmpty) {
                    return const Center(child: Text('Tidak ada data siswa'));
                  }
                  return ListView.separated(
                    controller: scrollController,
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                      bottom: 100,
                    ),
                    itemCount: siswa.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      return SiswaItem(data: siswa[index]);
                    },
                  );
                },
                sukses: (siswa) {
                  if (siswa.isEmpty) {
                    return const Center(child: Text('Tidak ada data siswa'));
                  }
                  return ListView.separated(
                    controller: scrollController,
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                      bottom: 100,
                    ),
                    itemCount: siswa.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      return SiswaItem(data: siswa[index]);
                    },
                  );
                },
                success:
                    (
                      siswa,
                      currentPage,
                      lastPage,
                      hasReachedMax,
                      isLoadingMore,
                    ) {
                      if (siswa.isEmpty) {
                        return const Center(
                          child: Text('Tidak ada data siswa'),
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
                        itemCount: siswa.length + (isLoadingMore ? 1 : 0),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 16),
                        itemBuilder: (context, index) {
                          if (index >= siswa.length) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: CircularProgressIndicator(),
                              ),
                            );
                          }
                          return SiswaItem(data: siswa[index]);
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
                          context.read<SiswaBloc>().add(
                            const SiswaEvent.loadSiswa(),
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
            screen: const AddSiswaPage(),
            withNavBar: false,
          );
          if (result == true && mounted) {
            context.read<SiswaBloc>().add(const SiswaEvent.loadSiswa());
          }
        },
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
