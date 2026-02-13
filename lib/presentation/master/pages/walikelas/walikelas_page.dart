import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/components/search_input.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/master/bloc/walikelas/walikelas_bloc.dart';
import 'package:webview_skops/presentation/master/pages/walikelas/walikelas_add_page.dart';
import 'package:webview_skops/presentation/master/widgets/walikelas_item.dart';

class WaliKelasPage extends StatefulWidget {
  const WaliKelasPage({super.key});

  @override
  State<WaliKelasPage> createState() => _WaliKelasPageState();
}

class _WaliKelasPageState extends State<WaliKelasPage> {
  final searchController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  Timer? _debounce;

  @override
  void initState() {
    scrollController.addListener(_onScroll);
    context.read<WalikelasBloc>().add(const WalikelasEvent.loadWalikelas());

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
      context.read<WalikelasBloc>().add(const WalikelasEvent.loadMore());
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
        backgroundColor: Colors.green[50],
        title: SearchInput(
          controller: searchController,
          onChanged: (value) {
            _debounce?.cancel();

            _debounce = Timer(const Duration(milliseconds: 400), () {
              if (value.length > 1) {
                context.read<WalikelasBloc>().add(WalikelasEvent.searchWalikelas(value));
              }
              if (value.isEmpty) {
                context.read<WalikelasBloc>().add(const WalikelasEvent.searchWalikelas(''));
              }
            });
          },
        ),
      ),
      body: SafeArea(
        child: BlocListener<WalikelasBloc, WalikelasState>(
          listener: (context, state) {
            if (state is WalikelasError) {
              // Show snackbar for error
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: AppColors.red,
                  duration: const Duration(seconds: 3),
                ),
              );
              
              // Auto-reload to clear error state and prevent error screen
              Future.delayed(const Duration(milliseconds: 200), () {
                if (mounted) {
                  context.read<WalikelasBloc>().add(
                    const WalikelasEvent.loadWalikelas(),
                  );
                }
              });
            }
          },
          child: RefreshIndicator(
            onRefresh: () async {
              context.read<WalikelasBloc>().add(const WalikelasEvent.refresh());
            },
            child: BlocBuilder<WalikelasBloc, WalikelasState>(
              builder: (context, state) {
                return state.when(
                  initial: () =>
                      const Center(child: Text('Tarik untuk memuat data')),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  loaded: (walikelas) {
                    if (walikelas.isEmpty) {
                      return const Center(child: Text('Tidak ada data walikelas'));
                    }
                    return ListView.separated(
                      controller: scrollController,
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 16,
                        bottom: 100,
                      ),
                      itemCount: walikelas.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      itemBuilder: (context, index) {
                        return WalikelasItem(data: walikelas[index]);
                      },
                    );
                  },
                  sukses: (walikelas) {
                    if (walikelas.isEmpty) {
                      return const Center(child: Text('Tidak ada data walikelas'));
                    }
                    return ListView.separated(
                      controller: scrollController,
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 16,
                        bottom: 100,
                      ),
                      itemCount: walikelas.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      itemBuilder: (context, index) {
                        return WalikelasItem(data: walikelas[index]);
                      },
                    );
                  },
                  success:
                      (
                        walikelas,
                        currentPage,
                        lastPage,
                        hasReachedMax,
                        isLoadingMore,
                      ) {
                        if (walikelas.isEmpty) {
                          return const Center(child: Text('Tidak ada data walikelas'));
                        }

                        return ListView.separated(
                          controller: scrollController,
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 16,
                            bottom: 100,
                          ),
                          itemCount: walikelas.length + (isLoadingMore ? 1 : 0),
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 16),
                          itemBuilder: (context, index) {
                            if (index >= walikelas.length) {
                              return const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            }
                            return WalikelasItem(data: walikelas[index]);
                          },
                        );
                      },
                  error: (message) => const Center(
                    child: CircularProgressIndicator(), // Show loading while auto-reloading
                  ),
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await PersistentNavBarNavigator.pushNewScreen(
            context,
            screen: const AddWalikelasPage(),
            withNavBar: false,
          );
          if (result == true && mounted) {
            context.read<WalikelasBloc>().add(const WalikelasEvent.loadWalikelas());
          }
        },
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
