import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/default/size_config.dart';
import 'package:webview_skops/presentation/home/bloc/top10_poin_siswa/top10_poin_siswa_bloc.dart';

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
              Text(
                'Lihat Semua',
                style: GoogleFonts.poppins(
                  color: Colors.blue,
                  // fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
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
                            Text(
                              'Jumlah Siswa: ${state.top10skor[index].jumlah}',
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Skor: ${state.top10skor[index].skor}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  state.top10skor[index].tipe,
                                  style: TextStyle(
                                    color:
                                        state.top10skor[index].tipe == 'reward'
                                        ? Colors.green
                                        : Colors.red,
                                    fontWeight: FontWeight.bold,
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
