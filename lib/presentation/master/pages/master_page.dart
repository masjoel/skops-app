import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/presentation/master/pages/guru_page.dart';
import 'package:webview_skops/presentation/master/pages/siswa_page.dart';
import 'package:webview_skops/presentation/master/pages/skor_page.dart';
import 'package:webview_skops/presentation/master/pages/walikelas_page.dart';

import '../../../core/constants/colors.dart';
import '../../../core/inherited/tab_controller_provider.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({super.key});

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    
    // Listen to masterTabIndex changes from TabControllerProvider
    final provider = TabControllerProvider.of(context);
    provider?.masterTabIndex.addListener(() {
      final index = provider.masterTabIndex.value;
      if (index != null && mounted) {
        _tabController.animateTo(index);
        // Reset the notifier after handling
        provider.masterTabIndex.value = null;
      }
    });
  }
  
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorColor: AppColors.primary,
            labelColor: AppColors.primary,
            unselectedLabelColor: Colors.black,
            tabs: const [
              Tab(child: FittedBox(child: Text('Skor Perilaku'))),
              Tab(child: FittedBox(child: Text('Siswa'))),
              Tab(child: FittedBox(child: Text('Guru'))),
              Tab(child: FittedBox(child: Text('Wali Kelas'))),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(child: SkorPage()),
                Center(child: SiswaPage()),
                Center(child: GuruPage()),
                Center(child: WaliKelasPage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
