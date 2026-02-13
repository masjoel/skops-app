import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/core/constants/string_extension.dart';
import 'package:webview_skops/presentation/master/bloc/skor/skor_bloc.dart';
import 'package:webview_skops/presentation/master/models/skor_master_response_model.dart';
import 'package:webview_skops/presentation/master/pages/jenis_poin/skor_edit_page.dart';

class SkorItem extends StatefulWidget {
  final Skor data;
  const SkorItem({super.key, required this.data});

  @override
  State<SkorItem> createState() => _SkorItemState();
}

class _SkorItemState extends State<SkorItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.white, width: 0.5),
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
                          screen: EditSkorPage(data: widget.data),
                          withNavBar: false,
                        );
                    if (result == true && mounted) {
                      context.read<SkorBloc>().add(const SkorEvent.fetch());
                    }
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.data.jenis,
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
                                final bloc = context.read<SkorBloc>();
                                bloc.add(SkorEvent.deleteSkor(widget.data.id));
                                bloc.add(const SkorEvent.fetch());
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
          Text('Keterangan : ${widget.data.deskripsi}'),
          const SpaceHeight(8.0),
          Text('Tindakan : ${widget.data.tindakan}'),
          const SpaceHeight(8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
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
                child: Row(
                  children: [
                    Text(
                      widget.data.tipe.toTitleCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      widget.data.kode == '-' || widget.data.kode == ''
                          ? ''
                          : ' (${widget.data.kode})',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
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
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
