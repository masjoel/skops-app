import 'package:flutter/material.dart';
import 'package:webview_skops/core/inherited/tab_controller_provider.dart';

import '../../../../data/datasources/dash_remote_datasource.dart';
import '../../../../data/models/response/dash_totalpoin_response_model.dart';
import '../../../../default/size_config.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  TotalPoin? totalPoin;

  void loadTotalPoin() async {
    final result = await DashRemoteDatasource().getTotalPoin();
    result.fold(
      (error) {
        setState(() {
          totalPoin = null;
        });
      },
      (data) {
        setState(() {
          totalPoin = data.data;
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    loadTotalPoin();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      color: Colors.white,
      child: GridView.count(
        padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.4,
        children: [
          cardWidget(
            color: const Color(0xFF00C0EF),
            title: "Guru",
            masterTabIndex: 2,
            value: totalPoin?.jGuru.toString() ?? "0",
            icon: Icons.person_add,
          ),
          cardWidget(
            color: const Color(0xFFF39C12),
            title: "Siswa",
            masterTabIndex: 1, 
            value: totalPoin?.jSiswa.toString() ?? "0",
            icon: Icons.groups,
          ),
          cardWidget(
            color: const Color(0xFF00A65A),
            title: "Wali Kelas",
            masterTabIndex: 3,
            value: totalPoin?.jWaliKelas.toString() ?? "0",
            icon: Icons.person_search,
          ),
          cardWidget(
            color: const Color(0xFFDD4B39),
            title: "Jenis Poin",
            masterTabIndex: 0,
            value: totalPoin?.jJenis.toString() ?? "0",
            icon: Icons.bar_chart,
          ),
        ],
      ),
    );
  }

  Widget cardWidget({
    required Color color,
    required String title,
    required String value,
    required int masterTabIndex,
    required IconData icon,
  }) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        value,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          // fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Icon(
                      icon,
                      size: 54,
                      color: Colors.white.withOpacity(0.25),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.15),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    final provider = TabControllerProvider.of(context);
                    provider?.controller.jumpToTab(1);
                    provider?.masterTabIndex.value = masterTabIndex;
                  },
                  child: const Text(
                    "More info",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 6),
                const Icon(Icons.arrow_forward, color: Colors.white, size: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
