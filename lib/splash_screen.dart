import 'package:flutter/material.dart';
import 'package:webview_skops/default/size_config.dart';
import 'data/datasources/auth_local_datasource.dart';
import 'presentation/auth/pages/login_page.dart';
import 'widgets/bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkAuth();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _checkAuth() async {
    final isAuth = await AuthLocalDatasource().isAuth();
    await Future.delayed(const Duration(seconds: 1));

    if (!mounted) return;

    if (isAuth) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => CustomBottomNavbar()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) =>  LoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.safeBlockHorizontal * 200 / 3.6,
              width: SizeConfig.safeBlockHorizontal * 200 / 3.6,
              child: Image.asset("assets/icons/logo.png"),
              // child: const FlutterLogo(),
            ),
          ],
        ),
      ),
    );
  }
}
