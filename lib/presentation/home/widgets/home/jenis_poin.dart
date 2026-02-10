import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/string_extension.dart';
import 'package:webview_skops/core/inherited/tab_controller_provider.dart';
import 'package:webview_skops/presentation/master/models/skor_response_model.dart';
import 'package:webview_skops/default/size_config.dart';
import 'package:webview_skops/presentation/home/bloc/jenis_skor/jenis_skor_bloc.dart';

class JenisPoin extends StatefulWidget {
  const JenisPoin({super.key});

  @override
  State<JenisPoin> createState() => _JenisPoinState();
}

class _JenisPoinState extends State<JenisPoin> {
  final List<JenisSkor> dataskor = [];
  @override
  void initState() {
    context.read<JenisSkorBloc>().add(const JenisSkorEvent.fetch());
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
                    'Jenis Poin',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Data Pelanggaran/Reward',
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
                  provider?.controller.jumpToTab(1);
                  provider?.masterTabIndex.value = 0;
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
          BlocBuilder<JenisSkorBloc, JenisSkorState>(
            builder: (context, state) {
              switch (state) {
                case JenisSkorSuccess():
                  return ListView.separated(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.jenisSkor.length,
                    separatorBuilder: (context, index) =>
                        const SpaceHeight(8.0),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0, 0.0, 0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Colors.blue[200]!,
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
                            state.jenisSkor[index].kode.isEmpty
                                ? Container()
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(4.0),
                                        decoration: BoxDecoration(
                                          color:
                                              state.jenisSkor[index].tipe ==
                                                  'reward'
                                              ? Colors.green.shade700
                                              : Colors.orange,
                                          borderRadius: BorderRadius.circular(
                                            4.0,
                                          ),
                                          border: Border.all(
                                            color:
                                                state.jenisSkor[index].tipe ==
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
                                              color: Colors.black.withOpacity(
                                                0.1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          state.jenisSkor[index].kode,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                            SpaceHeight(8.0),
                            Text(state.jenisSkor[index].jenis),
                            SpaceHeight(8.0),
                            Text(
                              'Keterangan: ${state.jenisSkor[index].deskripsi}',
                            ),
                            SpaceHeight(8.0),
                            Text(
                              'Tindakan: ${state.jenisSkor[index].tindakan}',
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
                                        state.jenisSkor[index].tipe == 'reward'
                                        ? Colors.green.shade700
                                        : Colors.orange,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color:
                                          state.jenisSkor[index].tipe ==
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
                                        state.jenisSkor[index].tipe
                                            .toTitleCase(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
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
                                        state.jenisSkor[index].tipe == 'reward'
                                        ? Colors.green.shade700
                                        : Colors.orange,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color:
                                          state.jenisSkor[index].tipe ==
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
                                    'Skor : ${state.jenisSkor[index].skor}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
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
