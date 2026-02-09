import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/master/bloc/walikelas/walikelas_bloc.dart';
import 'package:webview_skops/presentation/master/models/walikelas_response_model.dart';
import 'package:webview_skops/presentation/master/pages/walikelas_edit_page.dart';

class WalikelasItem extends StatefulWidget {
  final Walikelas data;
  const WalikelasItem({super.key, required this.data});

  @override
  State<WalikelasItem> createState() => _WalikelasItemState();
}

class _WalikelasItemState extends State<WalikelasItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.green[200]!, width: 0.5),
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
                          screen: EditWalikelasPage(data: widget.data),
                          withNavBar: false, // ⬅️ navbar hilang
                        );
                    if (result == true && mounted) {
                      context.read<WalikelasBloc>().add(
                        const WalikelasEvent.loadWalikelas(),
                      );
                    }
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.data.nama,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SpaceHeight(1), // jarak underline
                      Container(height: 1, width: 100, color: Colors.green),
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
                                final bloc = context.read<WalikelasBloc>();
                                bloc.add(WalikelasEvent.deleteWalikelas(widget.data.id));
                                bloc.add(const WalikelasEvent.loadWalikelas());
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
          Text(
            'Kelas ${widget.data.kelas} ${widget.data.ext} ${widget.data.jurusan}',
          ),
          SpaceHeight(8),
          Container(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(color: Colors.green, width: 0.5),
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
              '${widget.data.tahun}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
