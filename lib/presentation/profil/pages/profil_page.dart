import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/data/datasources/auth_local_datasource.dart';
import 'package:webview_skops/data/models/response/auth_response_model.dart';
import 'package:webview_skops/default/size_config.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  User? authUser;
  Future<void> getProfil() async {
    final data = await AuthLocalDatasource().getAuthData();
    setState(() {
      authUser = data.user;
    });
  }

  @override
  void initState() {
    super.initState();
    getProfil();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: const Text(
          'Profil',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight / 3,
              width: SizeConfig.screenWidth,
              child: Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  ClipPath(
                    clipper: OvalBottomBorderClipper(),
                    child: Container(
                      height: 80,
                      width: SizeConfig.screenWidth,
                      color: Colors.blue.shade800,
                    ),
                  ),
                  Positioned(top: 12, left: 0, right: 0, child: userBalance()),
                ],
              ),
            ),

            SpaceHeight(SizeConfig.safeBlockVertical * 100 / 9.2),
          ],
        ),
      ),
    );
  }

  Widget userBalance() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal * 20 / 3.6,
      ),
      padding: EdgeInsets.all(8),
      height: SizeConfig.safeBlockVertical * 50 / 1.6,
      width: SizeConfig.screenWidth,
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              authUser?.nama ?? '',
              style: GoogleFonts.poppins(
                color: Colors.green.shade700,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.blockSizeVertical * 12 / 5.2,
              ),
            ),
          ),
          Expanded(
            child: Text(
              authUser?.email ?? '',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.blockSizeVertical * 12 / 7.2,
              ),
            ),
          ),

          Divider(thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.verified_user_outlined,
                    color: Colors.blue,
                    size: SizeConfig.blockSizeVertical * 30 / 7.2,
                  ),
                  SizedBox(width: SizeConfig.safeBlockHorizontal * 10 / 3.6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reward',
                        style: GoogleFonts.poppins(
                          fontSize: SizeConfig.blockSizeVertical * 10 / 7.2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ],
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
