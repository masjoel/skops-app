import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/string_extension.dart';
import 'package:webview_skops/core/inherited/tab_controller_provider.dart';
import 'package:webview_skops/default/size_config.dart';

import '../../data/models/response/top10_skor_response_model.dart';
import '../../presentation/home/bloc/top10_skor/top10_skor_bloc.dart';

class TopSkor extends StatefulWidget {
  const TopSkor({super.key});

  @override
  State<TopSkor> createState() => _TopSkorState();
}

class _TopSkorState extends State<TopSkor> {
  final List<Top10Skor> top10skor = [];
  @override
  void initState() {
    context.read<Top10SkorBloc>().add(const Top10SkorEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 20 / 7.2),
      padding: EdgeInsets.fromLTRB(
        SizeConfig.safeBlockHorizontal * 20 / 3.6,
        SizeConfig.safeBlockVertical * 20 / 7.2,
        SizeConfig.safeBlockHorizontal * 20 / 3.6,
        0,
      ),
      width: SizeConfig.screenWidth,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top 10 Jenis Poin',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Pelanggaran/Reward terbanyak',
                    style: GoogleFonts.poppins(
                      color: Colors.black45,
                      fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  final provider = TabControllerProvider.of(context);
                  provider?.controller.jumpToTab(
                    3,
                  ); 
                },

                child: Text(
                  'Lihat Semua',
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    // fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                  ),
                ),
              ),
            ],
          ),
          BlocBuilder<Top10SkorBloc, Top10SkorState>(
            builder: (context, state) {
              switch (state) {
                case Top10SkorSuccess():
                  return ListView.separated(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.top10skor.length,
                    separatorBuilder: (context, index) =>
                        const SpaceHeight(8.0),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0, 0.0, 0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.red[50],
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Colors.red[200]!,
                            width: 0.5,
                          ),
                          boxShadow: List.filled(
                            1,
                            BoxShadow(
                              offset: const Offset(0, 1),
                              blurRadius: 0.0,
                              blurStyle: BlurStyle.outer,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.1),
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.top10skor[index].jenis,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SpaceHeight(8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Jumlah Siswa : '),
                                Container(
                                  padding: const EdgeInsets.fromLTRB(
                                    8.0,
                                    1.0,
                                    8.0,
                                    1.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 0.5,
                                    ),
                                    boxShadow: List.filled(
                                      1,
                                      BoxShadow(
                                        offset: const Offset(0, 1),
                                        blurRadius: 0.0,
                                        blurStyle: BlurStyle.outer,
                                        spreadRadius: 1,
                                        color: Colors.black.withOpacity(0.1),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    state.top10skor[index].jumlah.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SpaceHeight(8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.fromLTRB(
                                    8.0,
                                    1.0,
                                    8.0,
                                    1.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        state.top10skor[index].tipe == 'reward'
                                        ? Colors.green.shade700
                                        : Colors.orange,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color:
                                          state.top10skor[index].tipe ==
                                              'reward'
                                          ? Colors.green.shade700
                                          : Colors.orange,
                                      width: 0.5,
                                    ),
                                    boxShadow: List.filled(
                                      1,
                                      BoxShadow(
                                        offset: const Offset(0, 1),
                                        blurRadius: 0.0,
                                        blurStyle: BlurStyle.outer,
                                        spreadRadius: 1,
                                        color: Colors.black.withOpacity(0.1),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Skor : ${state.top10skor[index].skor}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.fromLTRB(
                                    8.0,
                                    1.0,
                                    8.0,
                                    1.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        state.top10skor[index].tipe == 'reward'
                                        ? Colors.green.shade700
                                        : Colors.orange,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color:
                                          state.top10skor[index].tipe ==
                                              'reward'
                                          ? Colors.green.shade700
                                          : Colors.orange,
                                      width: 0.5,
                                    ),
                                    boxShadow: List.filled(
                                      1,
                                      BoxShadow(
                                        offset: const Offset(0, 1),
                                        blurRadius: 0.0,
                                        blurStyle: BlurStyle.outer,
                                        spreadRadius: 1,
                                        color: Colors.black.withOpacity(0.1),
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        state.top10skor[index].tipe
                                            .toTitleCase(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
        ],
      ),
    );
  }
}
