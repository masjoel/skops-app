import 'package:flutter/material.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/default/size_config.dart';
import 'package:webview_skops/presentation/home/widgets/home/carousel_slider.dart';
import 'package:webview_skops/presentation/home/widgets/home/header.dart';
import 'package:webview_skops/presentation/home/widgets/home/home_berita.dart';
import 'package:webview_skops/presentation/home/widgets/home/home_pasar.dart';
import 'package:webview_skops/presentation/home/widgets/home/home_produk_cuan.dart';
import 'package:webview_skops/presentation/home/widgets/home/jenis_poin.dart';
import 'package:webview_skops/presentation/home/widgets/home/menu.dart';
import 'package:webview_skops/presentation/home/widgets/home/top_siswa.dart';
import 'package:webview_skops/presentation/home/widgets/home/top_skor.dart';

import '../widgets/home/home_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePageHeader(),
            HomeCard(),
            HomeCarousel(),
            TopSiswa(),
            TopSkor(),
            JenisPoin(),
            // HomeMenu(),
            // HomeProdukCuan(),
            // HomePasar(),
            // HomeBerita(),
            SpaceHeight(SizeConfig.safeBlockVertical * 100 / 9.2),
            // SizedBox(height: SizeConfig.safeBlockHorizontal * 100 / 3.6),
          ],
        ),
      ),
    );
  }
}
