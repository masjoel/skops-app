import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/default/size_config.dart';
import 'package:webview_skops/presentation/home/bloc/top10_poin_siswa/top10_poin_siswa_bloc.dart';

import '../../data/models/response/top10_siswa_response_model.dart';

class TopSiswa extends StatefulWidget {
  const TopSiswa({super.key});

  @override
  State<TopSiswa> createState() => _TopSiswaState();
}

class _TopSiswaState extends State<TopSiswa> {
  final List<Top10Siswa> top10poin = [];
  @override
  void initState() {
    context.read<Top10PoinSiswaBloc>().add(const Top10PoinSiswaEvent.fetch());
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
                    'Top 10 Siswa',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Siswa dengan poin tertinggi',
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
          BlocBuilder<Top10PoinSiswaBloc, Top10PoinSiswaState>(
            builder: (context, state) {
              switch (state) {
                case Top10PoinSuccess():
                  return ListView.separated(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.top10.length,
                    separatorBuilder: (context, index) =>
                        const SpaceHeight(8.0),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Colors.orange[200]!,
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
                              state.top10[index].nama,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            // const SpaceHeight(8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Kelas ${state.top10[index].kelas} ${state.top10[index].ext} ${state.top10[index].jurusan}',
                                ),
                                Text(
                                  '${state.top10[index].totSkor} Poin',
                                  style: TextStyle(
                                    color:
                                        state.top10[index].totSkor.toInt() >= 0
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
