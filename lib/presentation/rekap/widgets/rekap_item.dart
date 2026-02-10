import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/presentation/rekap/models/rekap_response_model.dart';
import 'package:webview_skops/presentation/rekap/pages/rekap_detail_page.dart';

class RekapItem extends StatefulWidget {
  final RekapSingle data;
  const RekapItem({super.key, required this.data});

  @override
  State<RekapItem> createState() => _RekapItemState();
}

class _RekapItemState extends State<RekapItem> {
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
                      widget.data.nama,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade900,
                      ),
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SpaceWidth(8),
              GestureDetector(
                onTap: () async {
                  await PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: DetailRekapPage(data: widget.data),
                    withNavBar: false,
                  );
                },
                child: Icon(Icons.search, color: Colors.amber.shade900),
              ),
            ],
          ),
          // const SpaceHeight(8.0),
          Text(
            'Kelas : ${widget.data.kelas} ${widget.data.ext} ${widget.data.jurusan}',
            style: TextStyle(fontSize: 12),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          // const SpaceHeight(8.0),
          Center(
            child: Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(color: Colors.grey.shade100, width: 1.5),
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
                children: [
                  Text(
                    widget.data.totSkor.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: widget.data.totSkor > 0
                          ? Colors.green.shade700
                          : Colors.red,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Total Poin',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // fontSize: 18,
                      color: widget.data.totSkor > 0
                          ? Colors.green.shade700
                          : Colors.red,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          const SpaceHeight(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(8.0, 1.0, 8.0, 1.0),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(color: Colors.orange, width: 0.5),
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
                      widget.data.totpoin.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SpaceHeight(4.0),
                  Text(
                    'Pelanggaran',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(8.0, 1.0, 8.0, 1.0),
                    decoration: BoxDecoration(
                      color: Colors.green.shade700,
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: Colors.green.shade700,
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
                      widget.data.totreward.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SpaceHeight(4.0),
                  Text(
                    'Reward',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ],
              ),
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
                          (widget.data.totPemutihan > 0)
                              ? widget.data.totPemutihan.toString()
                              : (widget.data.totPemutihan * -1).toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            // fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SpaceHeight(4.0),
                  Text(
                    'Pemutihan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          SpaceHeight(8.0),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey.shade300,
          ),
          SpaceHeight(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  'NIS : ${widget.data.nis}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                child: Text(
                  'NISN : ${widget.data.nisn}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
