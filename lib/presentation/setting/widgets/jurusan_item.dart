import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/presentation/setting/bloc/jurusan/jurusan_bloc.dart';
import 'package:webview_skops/presentation/setting/models/jurusan_response_model.dart';
import 'package:webview_skops/presentation/setting/pages/jurusan_edit_page.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/constants/colors.dart';

class JurusanItem extends StatefulWidget {
  final Jurusan data;
  const JurusanItem({super.key, required this.data});

  @override
  State<JurusanItem> createState() => _JurusanItemState();
}

class _JurusanItemState extends State<JurusanItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            '${widget.data.name} (${widget.data.kode})',
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
                        return EditJurusanPage(data: widget.data);
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
                              final bloc = context.read<JurusanBloc>();
                              bloc.add(JurusanEvent.deleteJurusan(widget.data.id));
                              bloc.add(const JurusanEvent.fetch());
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
