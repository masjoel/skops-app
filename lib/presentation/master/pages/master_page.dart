import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/presentation/master/pages/guru_page.dart';
import 'package:webview_skops/presentation/master/pages/siswa_page.dart';
import 'package:webview_skops/presentation/master/pages/walikelas_page.dart';

import '../../../core/constants/colors.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({super.key});

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  @override
  void initState() {
    // context.read<CategoriesBloc>().add(const CategoriesEvent.fetchLocal());
    // context.read<ProductUnitsBloc>().add(const ProductUnitsEvent.fetchLocal());
    // context.read<CashCategoryBloc>().add(const CashCategoryEvent.fetchLocal());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:  Colors.blue.shade800,
          title: const Text('Master Data',
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
                Tab(child: FittedBox(child: Text('Siswa'))),
                Tab(child: FittedBox(child: Text('Guru'))),
                Tab(child: FittedBox(child: Text('Wali Kelas'))),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: SiswaPage()),
                  Center(child: GuruPage()),
                  Center(child: WaliKelasPage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
