import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:webview_skops/data/datasources/auth_local_datasource.dart';
import 'package:webview_skops/presentation/auth/bloc/login/login_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_skops/splash_screen.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/auth_service.dart';
import '../../../data/models/request/login_request_model.dart';
import '../../../default/custom_animation.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final deviceIdController = TextEditingController();
  final namaUsahaController = TextEditingController();
  File? _savedImage;
  bool _isObscured = true;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    deviceIdController.dispose();
    namaUsahaController.dispose();
    super.dispose();
  }

  Future<void> getProfil() async {
    final namaUsaha = await AuthLocalDatasource().getProfilUsaha('namaUsaha');
    setState(() {
      namaUsahaController.text = namaUsaha;
    });
  }

  Future<void> _loadImageFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final savedImagePath = prefs.getString('saved_logo_path');
    if (savedImagePath != null && File(savedImagePath).existsSync()) {
      setState(() {
        _savedImage = File(savedImagePath);
      });
    }
  }

  @override
  void initState() {
    super.initState();

    getProfil();
    _loadImageFromPrefs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SpaceHeight(50.0),
          CustomAnimation2(
            delay: 2000,
            duration: 500,
            xOffset: 0,
            yOffset: -50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130.0),
              child: _savedImage != null
                  ? Image.file(_savedImage!, height: 100)
                  : Image.asset(
                      Assets.images.logo.path,
                      width: 100,
                      height: 100,
                    ),
            ),
          ),
          const SpaceHeight(16.0),
          CustomAnimation2(
            delay: 2000,
            duration: 500,
            xOffset: 100,
            yOffset: 0,
            child: Center(
              child: Text(
                namaUsahaController.text == ''
                    ? 'SKOPS'
                    : namaUsahaController.text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SpaceHeight(24.0),
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              labelText: 'Email',
            ),
          ),
          const SpaceHeight(12.0),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              ),
            ),
            obscureText: _isObscured,
          ),
          const SpaceHeight(24.0),
          BlocListener<LoginBloc, LoginState>(
            listener: (context, state) async {
              if (state is LoginSuccess) {
                final authResponseModel = state.authResponseModel;

                await AuthLocalDatasource().saveAuthData(authResponseModel);
                final authData = await AuthLocalDatasource().getAuthData();
                await AuthService().fetchAuthData();

                setState(() {
                  AuthService().userID;
                });

                await AuthLocalDatasource().saveProfilUsaha(
                  'password',
                  passwordController.text,
                );
                await AuthLocalDatasource().saveProfilUsaha(
                  'deviceId',
                  usernameController.text,
                );
                await AuthLocalDatasource().saveProfilUsaha(
                  'tgl',
                  DateFormat('yyyy-MM-ddTHH:mm:ss').format(DateTime.now()),
                );
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SplashScreen()),
                );

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SplashScreen()),
                );
              } else if (state is LoginError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                    backgroundColor: Colors.red,
                    duration: const Duration(seconds: 1),
                  ),
                );
              }
            },
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                switch (state.runtimeType) {
                  case LoginLoading():
                    return const Center(child: CircularProgressIndicator());

                  default:
                    return Column(
                      children: [
                        CustomAnimation2(
                          delay: 2000,
                          duration: 500,
                          xOffset: 0,
                          yOffset: 50,
                          child: Button.filled(
                            onPressed: () {
                              final model = LoginRequestModel(
                                email: usernameController.text,
                                password: passwordController.text,
                              );
                              context.read<LoginBloc>().add(
                                LoginEvent.login(model),
                              );
                            },
                            label: 'Login',
                          ),
                        ),

                        const SpaceHeight(24.0),
                        CustomAnimation2(
                          delay: 500,
                          xOffset: -50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('belum punya akun? '),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          child: RegisterPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                        8,
                                        4,
                                        8,
                                        4.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          255,
                                          208,
                                          129,
                                          11,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      child: const Text(
                                        'REGISTER disini',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
