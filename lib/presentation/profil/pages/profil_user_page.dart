import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_skops/core/components/buttons.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/core/constants/variables.dart';
import 'package:webview_skops/data/datasources/auth_local_datasource.dart';
import 'package:webview_skops/data/models/response/auth_response_model.dart';
import 'package:webview_skops/default/size_config.dart';
import 'package:webview_skops/presentation/profil/bloc/profil_user/profil_user_bloc.dart';
import 'package:webview_skops/presentation/profil/models/profil_user_response_model.dart';
import 'package:webview_skops/presentation/profil/widgets/image_picker_field.dart';

class ProfilUserPage extends StatefulWidget {
  final ProfilUser data;
  const ProfilUserPage({super.key, required this.data});

  @override
  State<ProfilUserPage> createState() => _ProfilUserPageState();
}

class _ProfilUserPageState extends State<ProfilUserPage> {
  User? authUser;
  TextEditingController? photoController;
  TextEditingController? namaController;
  TextEditingController? usernameController;
  TextEditingController? passwordController;
  TextEditingController? q1Controller;
  TextEditingController? q2Controller;
  TextEditingController? a1Controller;
  TextEditingController? a2Controller;
  bool _hasPopped = false;

  Future<void> getProfil() async {
    final data = await AuthLocalDatasource().getAuthData();
    setState(() {
      authUser = data.user;
    });
  }

  @override
  void initState() {
    photoController = TextEditingController(text: widget.data.photo);
    namaController = TextEditingController(text: widget.data.nama);
    usernameController = TextEditingController(text: widget.data.username);
    passwordController = TextEditingController(text: widget.data.password);
    q1Controller = TextEditingController(text: widget.data.q1);
    q2Controller = TextEditingController(text: widget.data.q2);
    a1Controller = TextEditingController(text: widget.data.a1);
    a2Controller = TextEditingController(text: widget.data.a2);
    super.initState();
    getProfil();
  }

  @override
  void dispose() {
    super.dispose();
    // photoController!.dispose();
    // namaController!.dispose();
    // usernameController!.dispose();
    // namaController!.dispose();
    // namaController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text(
          widget.data.nama,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              // height: SizeConfig.screenHeight / 1,
              // width: SizeConfig.screenWidth,
              child: Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  ClipPath(
                    clipper: OvalBottomBorderClipper(),
                    child: Container(
                      height: 90,
                      width: SizeConfig.screenWidth,
                      color: Colors.blue.shade800,
                    ),
                  ),
                  Positioned(top: 0, left: 0, right: 0, child: userBalance()),
                ],
              ),
            ),
            SpaceHeight(130),
            userForm(),
            SpaceHeight(SizeConfig.safeBlockVertical * 100 / 9.2),
          ],
        ),
      ),
    );
  }

  Widget userBalance() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal * 20 / 3,
      ),
      padding: EdgeInsets.all(8),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Image.network(
                '${Variables.imageBaseUrl}${photoController!.text}',
                width: 68.0,
                height: 68.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SpaceHeight(16),
          Text(
            widget.data.nama,
            style: GoogleFonts.poppins(
              fontSize: SizeConfig.blockSizeVertical * 12 / 7.2,
            ),
          ),
        ],
      ),
    );
  }

  Widget userForm() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Update Profil User',
              style: GoogleFonts.poppins(
                // fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SpaceHeight(16),
          TextField(
            controller: namaController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              labelText: 'Nama',
            ),
          ),
          SpaceHeight(12),
          TextField(
            controller: usernameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              labelText: 'Username',
            ),
            maxLines: 3,
          ),
          SpaceHeight(12),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              labelText: 'Password',
            ),
          ),
          SpaceHeight(12),
          TextField(
            controller: q1Controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              labelText: 'Pertanyaan 1',
            ),
          ),
          SpaceHeight(12),
          TextField(
            controller: a1Controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              labelText: 'Jawaban 1',
            ),
          ),
          SpaceHeight(12),
          TextField(
            controller: q2Controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              labelText: 'Pertanyaan 2',
            ),
          ),
          SpaceHeight(12),
          TextField(
            controller: a2Controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              labelText: 'Jawaban 2',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: const ImagePickerField(
              title: "Photo",
              prefKey: "saved_logo_path",
              isCircle: true,
            ),
          ),
          SpaceHeight(12),
          BlocConsumer<ProfilUserBloc, ProfilUserState>(
            listener: (context, state) {
              if (state is ProfilUserSuccess && !_hasPopped) {
                _hasPopped = true;
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Profil berhasil diupdate'),
                    backgroundColor: AppColors.ijo,
                  ),
                );
                Navigator.pop(context, true);
              }
              if (state is ProfilUserError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                    backgroundColor: AppColors.red,
                  ),
                );
              }
            },
            builder: (context, state) {
              // final bool isLoading = state is ProfilLoading;
              return Button.filled(
                color: AppColors.primary,
                onPressed: () async {
                  if (state is ProfilUserLoading) return;
                  final prefs = await SharedPreferences.getInstance();
                  final savedImagePath = prefs.getString('saved_logo_path');
                  String photoPath = widget.data.photo;
                  if (savedImagePath != null &&
                      File(savedImagePath).existsSync()) {
                    photoPath = savedImagePath;
                  }
                  // ignore: use_build_context_synchronously
                  context.read<ProfilUserBloc>().add(
                    ProfilUserEvent.updateProfilUser(
                      ProfilUser(
                        idx: widget.data.idx,
                        nama: namaController!.text,
                        username: usernameController!.text,
                        password: passwordController!.text,
                        q1: q1Controller!.text,
                        q2: q2Controller!.text,
                        a1: a1Controller!.text,
                        a2: a2Controller!.text,
                        photo: photoPath,
                      ),
                    ),
                  );
                },
                label:  'Simpan',
              );
            },
          ),
        ],
      ),
    );
  }
}
