import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:webview_skops/data/datasources/auth_local_datasource.dart';
import 'package:webview_skops/presentation/auth/pages/login_page.dart';
import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/auth_service.dart';
import '../../../data/models/request/register_request_model.dart';
import '../../../widgets/bottom_nav_bar.dart';
// import '../../home/pages/dashboard_page.dart';
import '../bloc/register/register_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final npsnController = TextEditingController();
  final instansiController = TextEditingController();
  final alamatController = TextEditingController();
  TextEditingController? marketingController;
  bool _isObscured = true;
  final deviceIdController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    nameController.dispose();
    emailController.dispose();
    npsnController.dispose();
    instansiController.dispose();
    alamatController.dispose();
    marketingController!.dispose();
    deviceIdController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    marketingController = TextEditingController(text: 'A01');
    super.initState();
    getDeviceId();
  }

  Future<String?> getDeviceId() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    if (!mounted) return null; // pastikan widget masih aktif

    setState(() {
      deviceIdController.text =
          '${androidInfo.fingerprint}/SN.${androidInfo.serialNumber}';
    });
    return '${androidInfo.fingerprint}/SN.${androidInfo.serialNumber}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SpaceHeight(50.0),
          Center(
            child: const Text(
              'REGISTRASI',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black,
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
              labelText: 'Username (No. HP)',
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
          const SpaceHeight(12.0),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              labelText: 'Nama Lengkap',
            ),
          ),
          const SpaceHeight(12.0),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              labelText: 'Email',
            ),
          ),
          const SpaceHeight(24.0),
          Text('DATA SEKOLAH', style: TextStyle(fontWeight: FontWeight.bold)),
          const SpaceHeight(12.0),
          TextField(
            controller: npsnController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              labelText: 'NPSN',
            ),
          ),
          const SpaceHeight(12.0),
          TextField(
            controller: instansiController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              labelText: 'Nama Sekolah',
            ),
          ),
          const SpaceHeight(12.0),
          TextField(
            controller: alamatController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              labelText: 'Alamat Sekolah',
            ),
            maxLines: 2,
          ),
          const SpaceHeight(24.0),
          BlocListener<RegisterBloc, RegisterState>(
            listener: (context, state) async {
              final scaffold = ScaffoldMessenger.of(context);
              switch (state) {
                case RegisterStateError():
                  scaffold.showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: Colors.red,
                      duration: const Duration(seconds: 1),
                    ),
                  );
                  break;

                case RegisterStateLoaded():
                  await AuthLocalDatasource().saveAuthData(state.data);
                  final authData = await AuthLocalDatasource().getAuthData();
                  await AuthService().fetchAuthData();
                  setState(() {
                    AuthService().userID;
                  });

                  if (!context.mounted) return;
                  await AuthLocalDatasource().saveProfilUsaha(
                    'tgl',
                    DateFormat('yyyy-MM-ddTHH:mm:ss').format(DateTime.now()),
                  );
                  scaffold.showSnackBar(
                    const SnackBar(
                      content: Text('Registrasi berhasil'),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 1),
                    ),
                  );
                  await Future.delayed(const Duration(seconds: 2));
                  if (!context.mounted) return;
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) =>  CustomBottomNavbar()),
                    (route) => false,
                  );
                  break;

                default:
                  // orElse
                  break;
              }
            },
            child: BlocBuilder<RegisterBloc, RegisterState>(
              builder: (context, state) {
                return switch (state) {
                  RegisterStateLoading() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  _ => Button.filled(
                    onPressed: () {
                      final model = RegisterRequestModel(
                        username: usernameController.text,
                        password: passwordController.text,
                        nama: nameController.text,
                        email: emailController.text,
                        npsn: npsnController.text,
                        instansi: instansiController.text,
                        alamat: alamatController.text,
                        marketing: 'A01',
                        deviceId: deviceIdController.text,
                      );
                      context.read<RegisterBloc>().add(
                        RegisterEvent.register(model),
                      );
                    },
                    label: 'Daftar',
                  ),
                };
              },
            ),
          ),
          const SpaceHeight(24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('sudah punya akun? '),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRight,
                          child: const LoginPage(),
                        ),

                        // MaterialPageRoute(
                        //   builder: (context) => const LoginPage(),
                        // ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 208, 129, 11),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Text(
                        'LOGIN disini',
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
        ],
      ),
    );
  }
}
