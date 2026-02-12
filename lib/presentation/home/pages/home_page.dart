import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/inherited/tab_controller_provider.dart';
import 'package:webview_skops/default/size_config.dart';
import 'package:webview_skops/presentation/home/widgets/home/carousel_slider.dart';
import 'package:webview_skops/presentation/home/widgets/home/header.dart';
import 'package:webview_skops/presentation/home/widgets/home/jenis_poin.dart';
import 'package:webview_skops/presentation/home/widgets/home/top_siswa.dart';
import 'package:webview_skops/presentation/home/widgets/home/top_skor.dart';

import '../widgets/home/home_card.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _rebuildCounter = 0;
  PersistentTabController? _tabController;

  @override
  void initState() {
    super.initState();
    _rebuildCounter = 0;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final provider = TabControllerProvider.of(context);
    if (provider != null && _tabController != provider.controller) {
      _tabController = provider.controller;
      _tabController!.addListener(_onTabChanged);
    }
  }

  void _onTabChanged() {
    if (_tabController?.index == 0 && mounted) {
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted) {
          setState(() {
            _rebuildCounter++;
          });
        }
      });
    }
  }

  @override
  void dispose() {
    _tabController?.removeListener(_onTabChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePageHeader(key: ValueKey('header_$_rebuildCounter')),
            HomeCard(key: ValueKey('card_$_rebuildCounter')),
            HomeCarousel(),
            TopSiswa(key: ValueKey('topsiswa_$_rebuildCounter')),
            TopSkor(key: ValueKey('topskor_$_rebuildCounter')),
            JenisPoin(key: ValueKey('jenispoin_$_rebuildCounter')),

            SpaceHeight(SizeConfig.safeBlockVertical * 100 / 9.2),
          ],
        ),
      ),
    );
  }
}
