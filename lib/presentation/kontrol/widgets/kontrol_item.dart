import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/core/constants/string_extension.dart';
import 'package:webview_skops/presentation/kontrol/bloc/kontrol/kontrol_bloc.dart';
import 'package:webview_skops/presentation/kontrol/models/kontrol_response_model.dart';
import 'package:webview_skops/presentation/kontrol/pages/kontrol_edit_page.dart';

class KontrolItem extends StatefulWidget {
  final Kontrol data;
  const KontrolItem({super.key, required this.data});

  @override
  State<KontrolItem> createState() => _KontrolItemState();
}

class _KontrolItemState extends State<KontrolItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.white!, width: 0.5),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () async {
                    final result =
                        await PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: EditKontrolPage(data: widget.data),
                          withNavBar: false,
                        );
                    if (result == true && mounted) {
                      context.read<KontrolBloc>().add(
                        const KontrolEvent.fetch(),
                      );
                    }
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.data.namasiswa,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade900,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SpaceHeight(1), // jarak underline
                      Container(height: 1, width: 100, color: Colors.blue),
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
                            "Yakin ingin menghapus data ini?",
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
                                final bloc = context.read<KontrolBloc>();
                                bloc.add(
                                  KontrolEvent.deleteKontrol(widget.data.id),
                                );
                                bloc.add(const KontrolEvent.loadKontrol());
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
                child: Icon(Icons.highlight_remove_sharp, color: AppColors.red),
              ),
            ],
          ),
          const SpaceHeight(8.0),
          Text(widget.data.jenis, maxLines: 1, overflow: TextOverflow.ellipsis),
          const SpaceHeight(8.0),
          Text(
            'Tindakan : ${widget.data.tindakan}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SpaceHeight(8.0),
          const SpaceHeight(8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(8.0, 1.0, 8.0, 1.0),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(color: Colors.deepPurple, width: 0.5),
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
                          widget.data.semester.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SpaceHeight(4.0),
                  Text(
                    'Semester',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(8.0, 1.0, 8.0, 1.0),
                    decoration: BoxDecoration(
                      color: widget.data.tipe == 'reward'
                          ? Colors.green.shade700
                          : Colors.orange,
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: widget.data.tipe == 'reward'
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
                      widget.data.skor.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SpaceHeight(4.0),
                  Text(
                    widget.data.tipe.toTitleCase(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SpaceHeight(8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  'Guru : ${widget.data.namaguru}',
                  style: TextStyle(fontSize: 12),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(8.0, 1.0, 8.0, 1.0),
                child: Text(
                  DateFormat('EEEE, dd MMM yyyy').format(widget.data.tgl),
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          SpaceHeight(4.0),
          Container(height: 1, width: double.infinity, color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    'Opr : ${widget.data.opr}',
                    style: TextStyle(fontSize: 11),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(8.0, 1.0, 8.0, 1.0),
                child: Text(
                  DateFormat('dd-MM-yyyy HH:mm:ss').format(widget.data.jam),
                  style: TextStyle(fontSize: 11),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
