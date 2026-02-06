import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/components/spaces.dart';
import 'core/constants/colors.dart';
import 'data/datasources/auth_local_datasource.dart';
import 'presentation/auth/bloc/logout/logout_bloc.dart';
import 'presentation/auth/pages/login_page.dart';

class DummyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.2),
                Center(
                  child: Container(
                    height: SizeConfig.safeBlockVertical * 300 / 7.2,
                    width: SizeConfig.safeBlockHorizontal * 300 / 3.6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/pair_programming.png'),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Halaman Belum Tersedia',
                  style: GoogleFonts.poppins(
                    fontSize: SizeConfig.safeBlockHorizontal * 16 / 3.6,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: SizeConfig.safeBlockVertical * 10 / 7.2),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal * 20 / 3.6,
                  ),
                  child: Text(
                    'Halaman masih dalam proses perancangan. Stay tuned!',
                    style: GoogleFonts.poppins(
                      fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                      color: Colors.black45,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SpaceHeight(100),
                BlocConsumer<LogoutBloc, LogoutState>(
                  listener: (context, state) async {
                    if (state is Success) {
                      await AuthLocalDatasource().removeAuthData();

                      // Pop dialog jika masih ada
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }

                      // Navigate ke login dan hapus semua route
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
                                  content: const Text(
                                    "Anda yakin ingin logout?",
                                  ),
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
                                        // Jangan tutup dialog di sini, biarkan listener yang handle
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
      ),
    );
  }
}
