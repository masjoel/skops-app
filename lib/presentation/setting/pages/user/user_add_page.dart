import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/buttons.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/data/datasources/auth_local_datasource.dart';
import 'package:webview_skops/data/models/response/auth_response_model.dart';
import 'package:webview_skops/presentation/setting/bloc/user/user_bloc.dart';
import 'package:webview_skops/presentation/setting/models/user_request_model.dart';

class AddUserPage extends StatefulWidget {
  const AddUserPage({super.key});

  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  late TextEditingController namaController;
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  late TextEditingController levelController;
  late TextEditingController idoprController;
  late TextEditingController statusController;
  bool _hasPopped = false;
  User? authUser;
  String? selectLevel;
  String? selectStatus;
  bool _isObscured = true;

  Future<void> getProfil() async {
    final data = await AuthLocalDatasource().getAuthData();
    setState(() {
      authUser = data.user;
    });
  }

  @override
  void initState() {
    namaController = TextEditingController();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    idoprController = TextEditingController();
    selectLevel = 'guru';
    selectStatus = 'Aktif';
    getProfil();
    super.initState();
  }

  @override
  void dispose() {
    namaController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    idoprController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'Tambah User',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24.0),
          children: [
            TextField(
              controller: usernameController,
              inputFormatters: [
                TextInputFormatter.withFunction((oldValue, newValue) {
                  return newValue.copyWith(text: newValue.text.toLowerCase());
                }),
                FilteringTextInputFormatter.deny(RegExp(r'\s')),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Username',
                // hintText: 'contoh: rudi.galak',
              ),
            ),
            const SpaceHeight(8.0),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
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
            const SpaceHeight(8.0),
            buildLevelDropdown(),
            const SpaceHeight(8.0),
            TextField(
              controller: namaController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Nama lengkap',
              ),
            ),
            const SpaceHeight(8.0),
            buildStatusDropdown(),
            const SpaceHeight(20.0),
            BlocConsumer<UserBloc, UserState>(
              listener: (context, state) {
                if (state is UserSukses && !_hasPopped) {
                  _hasPopped = true;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('User berhasil ditambahkan'),
                      backgroundColor: AppColors.primary,
                    ),
                  );
                  Navigator.pop(context, true);
                }
                if (state is UserError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: AppColors.red,
                    ),
                  );
                }
              },
              builder: (context, state) {
                final bool isLoading = state is UserLoading;
                return Button.filled(
                  color: AppColors.primary,
                  onPressed: () {
                    if (state is UserLoading) return;
                    context.read<UserBloc>().add(
                      UserEvent.addUser(
                        UserRequestModel(
                          nama: namaController.text,
                          username: usernameController.text,
                          password: passwordController.text,
                          level: selectLevel ?? 'guru',
                          idopr: authUser!.idx,
                          status: selectStatus ?? 'Aktif',
                        ),
                      ),
                    );
                  },
                  label: isLoading ? 'Menyimpan...' : 'Simpan',
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLevelDropdown() {
    final List<String> levelOptions = ['administrator', 'operator', 'guru'];

    return DropdownButtonFormField<String>(
      isExpanded: true,
      value: selectLevel,
      decoration: InputDecoration(
        labelText: 'Level',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
      ),
      items: levelOptions.map((val) {
        return DropdownMenuItem<String>(value: val, child: Text(val));
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectLevel = value;
        });
      },
    );
  }

  Widget buildStatusDropdown() {
    final List<String> statusOptions = ['Aktif', 'Non Aktif'];

    return DropdownButtonFormField<String>(
      isExpanded: true,
      value: selectStatus,
      decoration: InputDecoration(
        labelText: 'Status',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
      ),
      items: statusOptions.map((val) {
        return DropdownMenuItem<String>(value: val, child: Text(val));
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectStatus = value;
        });
      },
    );
  }
}
