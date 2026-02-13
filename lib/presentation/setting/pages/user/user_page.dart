import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/components/search_input.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/setting/bloc/user/user_bloc.dart';
import 'package:webview_skops/presentation/setting/pages/user/user_add_page.dart';
import 'package:webview_skops/presentation/setting/widgets/user_item.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final searchController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  Timer? _debounce;

  @override
  void initState() {
    scrollController.addListener(_onScroll);
    context.read<UserBloc>().add(const UserEvent.loadUser());

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
      context.read<UserBloc>().add(const UserEvent.loadMore());
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
        backgroundColor: Colors.blue.shade800,
        title: const Text(
          'User/Pengguna',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: SearchInput(
                controller: searchController,
                onChanged: (value) {
                  _debounce?.cancel();
                  _debounce = Timer(const Duration(milliseconds: 400), () {
                    if (value.length > 1) {
                      context.read<UserBloc>().add(UserEvent.searchUser(value));
                    }
                    if (value.isEmpty) {
                      context.read<UserBloc>().add(
                        const UserEvent.searchUser(''),
                      );
                    }
                  });
                },
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  context.read<UserBloc>().add(const UserEvent.refresh());
                },
                child: BlocBuilder<UserBloc, UserState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () =>
                          const Center(child: Text('Tarik untuk memuat data')),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      loaded: (profiluser) {
                        if (profiluser.isEmpty) {
                          return const Center(
                            child: Text('Tidak ada data rekap'),
                          );
                        }
                        return ListView.separated(
                          shrinkWrap: true,
                          controller: scrollController,
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 16,
                            bottom: 100,
                          ),
                          itemCount: profiluser.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 16),
                          itemBuilder: (context, index) {
                            return UserItem(data: profiluser[index]);
                          },
                        );
                      },
                      sukses: (profiluser) {
                        if (profiluser.isEmpty) {
                          return const Center(
                            child: Text('Tidak ada data rekap'),
                          );
                        }
                        return ListView.separated(
                          shrinkWrap: true,
                          controller: scrollController,
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 16,
                            bottom: 100,
                          ),
                          itemCount: profiluser.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 16),
                          itemBuilder: (context, index) {
                            return UserItem(data: profiluser[index]);
                          },
                        );
                      },
                      success:
                          (
                            profiluser,
                            currentPage,
                            lastPage,
                            hasReachedMax,
                            isLoadingMore,
                          ) {
                            if (profiluser.isEmpty) {
                              return const Center(
                                child: Text('Tidak ada data rekap'),
                              );
                            }

                            return ListView.separated(
                              shrinkWrap: true,
                              controller: scrollController,
                              padding: const EdgeInsets.only(
                                left: 16,
                                right: 16,
                                top: 16,
                                bottom: 100,
                              ),
                              itemCount:
                                  profiluser.length + (isLoadingMore ? 1 : 0),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 16),
                              itemBuilder: (context, index) {
                                if (index >= profiluser.length) {
                                  return const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                                return UserItem(data: profiluser[index]);
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
                                context.read<UserBloc>().add(
                                  const UserEvent.loadUser(),
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await PersistentNavBarNavigator.pushNewScreen(
            context,
            screen: const AddUserPage(),
            withNavBar: false,
          );
          if (result == true && mounted) {
            context.read<UserBloc>().add(const UserEvent.loadUser());
          }
        },
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
