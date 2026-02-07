import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/presentation/master/models/siswa_response_model.dart';
import 'package:webview_skops/presentation/master/bloc/siswa/siswa_bloc.dart';
import 'package:webview_skops/presentation/master/pages/siswa_edit_page.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/constants/colors.dart';

class SiswaItem extends StatefulWidget {
  final Siswa data;
  const SiswaItem({super.key, required this.data});

  @override
  State<SiswaItem> createState() => _SiswaItemState();
}

class _SiswaItemState extends State<SiswaItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.orange[50],
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.orange[200]!, width: 0.5),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () async {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: EditSiswaPage(data: widget.data),
                      withNavBar: false, // ⬅️ navbar hilang
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.data.nama,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SpaceHeight(1), // jarak underline
                      Container(height: 1, width: 100, color: Colors.black),
                    ],
                  ),
                ),
              ),
              SpaceWidth(8),
              GestureDetector(
                onTap: () async {
                  if (widget.data.id != 0) {
                    await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Konfirmasi"),
                          content: const Text(
                            "Yakin ingin menghapus kategori ini?",
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: const Text("Batal"),
                            ),
                            TextButton(
                              onPressed: () async {
                                final bloc = context.read<SiswaBloc>();
                                bloc.add(
                                  SiswaEvent.deleteSiswa(widget.data.id),
                                );
                                bloc.add(const SiswaEvent.loadSiswa());
                                Navigator.pop(context);
                              },
                              child: const Text("Hapus"),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: widget.data.id != 0 ? AppColors.red : Colors.grey,
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.delete, color: AppColors.white)],
                  ),
                ),
              ),
            ],
          ),
          const SpaceHeight(8.0),
          Text(
            'Kelas ${widget.data.kelas} ${widget.data.ext} ${widget.data.jurusan}',
          ),
          SpaceHeight(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('NIS', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(widget.data.nis),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('NISN', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(widget.data.nisn),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
