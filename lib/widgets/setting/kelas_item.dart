import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/presentation/setting/bloc/kelas/kelas_bloc.dart';
import 'package:webview_skops/presentation/setting/models/kelas_response_model.dart';
import 'package:webview_skops/presentation/setting/pages/kelas_edit_page.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';

class KelasItem extends StatefulWidget {
  final Kelas data;
  const KelasItem({super.key, required this.data});

  @override
  State<KelasItem> createState() => _KelasItemState();
}

class _KelasItemState extends State<KelasItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            widget.data.name,
            style: const TextStyle(fontSize: 16),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        const SpaceWidth(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                if (widget.data.id != 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return EditKelasPage(data: widget.data);
                      },
                    ),
                  );
                }
              },
              child: Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: widget.data.id != 0
                      ? AppColors.info
                      : Colors.grey,
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.edit, color: Colors.white)],
                ),
              ),
            ),
            const SpaceWidth(10),
            GestureDetector(
              onTap: () async {
                if (widget.data.id != 0) {
                  await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Konfirmasi"),
                        content: const Text("Yakin ingin menghapus data ini?"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: const Text("Batal"),
                          ),
                          TextButton(
                            onPressed: () async {
                              final bloc = context.read<KelasBloc>();
                              bloc.add(KelasEvent.deleteKelas(widget.data.id));
                              bloc.add(const KelasEvent.fetch());
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
      ],
    );
  }
}
