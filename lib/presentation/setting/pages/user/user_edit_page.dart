import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_skops/presentation/setting/models/user_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/buttons.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/setting/bloc/user/user_bloc.dart';

class EditUserPage extends StatefulWidget {
  final SingleUser data;
  const EditUserPage({super.key, required this.data});

  @override
  State<EditUserPage> createState() => _EditUserPageState();
}

class _EditUserPageState extends State<EditUserPage> {
  late TextEditingController namaController;
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  bool _hasPopped = false;
  String? selectLevel;
  String? selectStatus;
  bool _isObscured = true;

  @override
  void initState() {
    namaController = TextEditingController(text: widget.data.nama);
    usernameController = TextEditingController(text: widget.data.username);
    passwordController = TextEditingController();
    selectLevel = widget.data.level;
    selectStatus = widget.data.status;
    super.initState();
  }

  @override
  void dispose() {
    namaController.dispose();
    usernameController.dispose();
    passwordController.dispose();
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
                hintText: 'contoh: rudi.galak',
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
                      UserEvent.updateUser(
                        SingleUser(
                          idx: widget.data.idx,
                          nama: namaController.text,
                          username: usernameController.text,
                          password: passwordController.text,
                          level: selectLevel,
                          idopr: widget.data.idopr,
                          status: selectStatus,
                        ),
                      ),
                    );
                    context.read<UserBloc>().add(const UserEvent.loadUser());
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
