import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/data/datasources/auth_local_datasource.dart';
import 'package:webview_skops/presentation/auth/pages/login_page.dart';
import 'package:webview_skops/presentation/setting/pages/manage_kelas_page.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/components/menu_setting.dart';
import '../../../core/components/spaces.dart';
import '../../auth/bloc/logout/logout_bloc.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  String roles = '';
  Future<void> getProfil() async {
    final authData = await AuthLocalDatasource().getAuthData();
    setState(() {
      roles = authData.user.level;
    });
  }

  @override
  void initState() {
    getProfil();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: const Text(
          'Setting',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SpaceHeight(20),
              Row(
                children: [
                  MenuSetting(
                    iconPath: Assets.images.logo.path,
                    size: 32,
                    label: 'Profil',
                    onPressed: () {},
                    isImage: true,
                  ),
                ],
              ),
              SpaceHeight(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuSetting(
                    iconPath: Assets.images.logo.path,
                    iconData: Icons.meeting_room_outlined,
                    sizeIconData: 24,
                    label: 'Kelas',
                    onPressed: () {
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: const ManageKelasPage(),
                        withNavBar: false,
                      );
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ManageKelasPage(),
                      //   ),
                      // );
                    },
                    isImage: true,
                  ),
                ],
              ),
              SpaceHeight(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuSetting(
                    iconPath: Assets.images.logo.path,
                    iconData: Icons.people_alt_outlined,
                    sizeIconData: 24,
                    label: 'User/pengguna',
                    onPressed: () {},
                    isImage: true,
                  ),
                ],
              ),
              const SpaceHeight(50),
              BlocConsumer<LogoutBloc, LogoutState>(
                listener: (context, state) async {
                  if (state is Success) {
                    await AuthLocalDatasource().removeAuthData();

                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }

                    Navigator.of(
                      context,
                      rootNavigator: true,
                    ).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (_) => const LoginPage()),
                      (route) => false,
                    );
                  }
                },
                builder: (context, state) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Konfirmasi Logout"),
                                content: const Text("Anda yakin ingin logout?"),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text("Batal"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      context.read<LogoutBloc>().add(
                                        const LogoutEvent.logout(),
                                      );
                                    },
                                    child: const Text("Logout"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: const Text(
                          'Logout',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
