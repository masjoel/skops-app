import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/string_extension.dart';
import 'package:webview_skops/presentation/rekap/models/rekap_detail_response_model.dart';

class RekapDetailItem extends StatefulWidget {
  final RekapDetailSingle data;

  const RekapDetailItem({super.key, required this.data});

  @override
  State<RekapDetailItem> createState() => _RekapDetailItemState();
}

class _RekapDetailItemState extends State<RekapDetailItem> {
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat('EEEE, dd MMM yyyy').format(widget.data.tgl),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SpaceWidth(8),
              Text(
                'Semester: ${widget.data.semester}',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(height: 1, width: double.infinity, color: Colors.grey),
          const SpaceHeight(8.0),
          Text(widget.data.jenis, maxLines: 2, overflow: TextOverflow.ellipsis),
          const SpaceHeight(8.0),
          widget.data.tindakan.isEmpty ? Container() : Text(
            'Tindakan : ${widget.data.tindakan}',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
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
          SpaceHeight(8.0),
          Container(height: 1, width: double.infinity, color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat('dd-MM-yyyy HH:mm').format(widget.data.jam),
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              SpaceWidth(8),
              Text(
                'Opr: ${widget.data.nama}',
                style: TextStyle(fontSize: 12),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
