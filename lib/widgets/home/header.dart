import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:webview_skops/data/datasources/auth_local_datasource.dart';
import 'package:webview_skops/data/datasources/dash_remote_datasource.dart';
import 'package:webview_skops/data/models/response/dash_totalpoin_response_model.dart';
import 'package:webview_skops/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/models/response/auth_response_model.dart';

class HomePageHeader extends StatefulWidget {
  const HomePageHeader({super.key});

  @override
  State<HomePageHeader> createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
  User? authUser;
  // DashTotalPoinResponseModel? totalPoin; // atau
  TotalPoin? totalPoin; // jika hanya butuh data-nya saja
  bool isLoading = false;
  String? errorMessage;
  int jPelanggaran = 0;
  int jReward = 0;
  int jPoin = 0;

  Future<void> getProfil() async {
    final data = await AuthLocalDatasource().getAuthData();
    setState(() {
      authUser = data.user;
    });
  }

  void loadTotalPoin() async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });
    final result = await DashRemoteDatasource().getTotalPoin();
    result.fold(
      (error) {
        setState(() {
          isLoading = false;
          errorMessage = error;
          totalPoin = null;
        });
      },
      (data) {
        setState(() {
          isLoading = false;
          totalPoin = data.data;
          jPelanggaran = totalPoin!.jPoin;
          jReward = totalPoin!.jRew;
          jPoin = jReward - jPelanggaran;
          errorMessage = null;
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    getProfil();
    loadTotalPoin();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight / 3,
      width: SizeConfig.screenWidth,
      child: Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: SizeConfig.screenHeight / 3.6,
              width: SizeConfig.screenWidth,
              color: Colors.blue.shade800,
            ),
          ),
          Positioned(
            top: SizeConfig.safeBlockVertical * 120 / 7.2,
            left: 0,
            right: 0,
            child: userBalance(jPoin, jReward, jPelanggaran),
          ),
          Positioned(
            top: SizeConfig.safeBlockVertical * 30 / 7.2,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockVertical * 20 / 7.2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    authUser?.nama ?? '',
                    style: GoogleFonts.poppins(
                      fontSize: SizeConfig.safeBlockHorizontal * 14 / 3.6,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('tapped!');
                        },
                        icon: Icon(
                          Icons.info_outline,
                          color: Colors.white,
                          size: SizeConfig.safeBlockHorizontal * 20 / 3.6,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          print('tapped2');
                        },
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: SizeConfig.safeBlockHorizontal * 20 / 3.6,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget userBalance(int jPoin, int jReward, int jPelanggaran) {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: SizeConfig.safeBlockHorizontal * 20 / 3.6,
    ),
    padding: EdgeInsets.fromLTRB(
      SizeConfig.safeBlockHorizontal * 15 / 3.6,
      SizeConfig.safeBlockVertical * 15 / 7.2,
      SizeConfig.safeBlockHorizontal * 15 / 3.6,
      0,
    ),
    height: SizeConfig.safeBlockVertical * 50 / 3.6,
    width: SizeConfig.screenWidth,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 2,
          offset: Offset(0, 1), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              jPoin > 0 ? jPoin.toString() : (jPoin * -1).toString(),
              style: GoogleFonts.poppins(
                color: jPoin >= 0 ? Colors.green.shade700 : Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.blockSizeVertical * 12 / 7.2,
              ),
            ),
            Text(
              'POIN',
              style: GoogleFonts.poppins(
                color: jPoin >= 0 ? Colors.green.shade700 : Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.blockSizeVertical * 12 / 7.2,
              ),
            ),
          ],
        ),
        Divider(thickness: 2),
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
                    Row(
                      children: [
                        Text(
                          jReward.toString(),
                          style: TextStyle(
                            fontSize: SizeConfig.blockSizeVertical * 14 / 7.2,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pelanggaran',
                      style: GoogleFonts.poppins(
                        fontSize: SizeConfig.blockSizeVertical * 10 / 7.2,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          jPelanggaran.toString(),
                          style: TextStyle(
                            fontSize: SizeConfig.blockSizeVertical * 14 / 7.2,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: SizeConfig.safeBlockHorizontal * 10 / 3.6),
                Icon(
                  Icons.dangerous_outlined,
                  color: Colors.red,
                  size: SizeConfig.blockSizeVertical * 30 / 7.2,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

void test() {
  print('tap worked!');
}
