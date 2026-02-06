import 'package:flutter/material.dart';
import 'package:webview_skops/presentation/setting/pages/ekstensi_page.dart';
import 'package:webview_skops/presentation/setting/pages/jurusan_page.dart';
import 'package:webview_skops/presentation/setting/pages/kelas_page.dart';

import '../../../core/constants/colors.dart';

class ManageKelasPage extends StatefulWidget {
  const ManageKelasPage({super.key});

  @override
  State<ManageKelasPage> createState() => _ManageKelasPageState();
}

class _ManageKelasPageState extends State<ManageKelasPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:  Colors.blue.shade800,
          title: const Text('Kelas dan Jurusan',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          centerTitle: false,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: const Column(
          children: [
            TabBar(
              isScrollable: true,
              indicatorColor: AppColors.primary,
              labelColor: AppColors.primary,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(child: FittedBox(child: Text('Kelas'))),
                Tab(child: FittedBox(child: Text('Ext.'))),
                Tab(child: FittedBox(child: Text('Jurusan'))),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: KelasPage()),
                  Center(child: EkstensiPage()),
                  Center(child: JurusanPage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
