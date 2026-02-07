import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_skops/data/datasources/dash_remote_datasource.dart';
import 'package:webview_skops/data/datasources/master_remote_datasource.dart';
import 'package:webview_skops/presentation/home/bloc/jenis_skor/jenis_skor_bloc.dart';
import 'package:webview_skops/presentation/home/bloc/top10_skor/top10_skor_bloc.dart';
import 'package:webview_skops/presentation/master/bloc/guru/guru_bloc.dart';
import 'package:webview_skops/presentation/master/bloc/siswa/siswa_bloc.dart';
import 'package:webview_skops/presentation/master/bloc/walikelas/walikelas_bloc.dart';
import 'package:webview_skops/presentation/setting/bloc/ekstensi/ekstensi_bloc.dart';
import 'package:webview_skops/presentation/setting/bloc/jurusan/jurusan_bloc.dart';
import 'package:webview_skops/presentation/setting/bloc/kelas/kelas_bloc.dart';
import 'package:webview_skops/splash_screen.dart';
import 'core/constants/colors.dart';
import 'data/datasources/auth_remote_datasource.dart';
import 'presentation/auth/bloc/login/login_bloc.dart';
import 'presentation/auth/bloc/logout/logout_bloc.dart';
import 'presentation/auth/bloc/register/register_bloc.dart';
import 'presentation/home/bloc/top10_poin_siswa/top10_poin_siswa_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc(AuthRemoteDatasource())),
        BlocProvider(create: (context) => LogoutBloc(AuthRemoteDatasource())),
        BlocProvider(create: (context) => RegisterBloc()),
        BlocProvider(create: (context) => Top10PoinSiswaBloc(DashRemoteDatasource())),
        BlocProvider(create: (context) => Top10SkorBloc(DashRemoteDatasource())),
        BlocProvider(create: (context) => JenisSkorBloc(DashRemoteDatasource())),
        BlocProvider(create: (context) => SiswaBloc(MasterRemoteDatasource())),
        BlocProvider(create: (context) => GuruBloc(MasterRemoteDatasource())),
        BlocProvider(create: (context) => WalikelasBloc(MasterRemoteDatasource())),
        BlocProvider(create: (context) => KelasBloc(MasterRemoteDatasource())),
        BlocProvider(create: (context) => EkstensiBloc(MasterRemoteDatasource())),
        BlocProvider(create: (context) => JurusanBloc(MasterRemoteDatasource())),
      ],
      child: MaterialApp(
        title: 'SKOPS',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
          textTheme: GoogleFonts.quicksandTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            color: AppColors.white,
            elevation: 0,
            titleTextStyle: GoogleFonts.quicksand(
              color: AppColors.primary,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
            iconTheme: const IconThemeData(color: AppColors.primary),
          ),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
