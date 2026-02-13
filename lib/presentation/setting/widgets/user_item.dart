import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/core/constants/string_extension.dart';
import 'package:webview_skops/presentation/setting/bloc/user/user_bloc.dart';
import 'package:webview_skops/presentation/setting/models/user_response_model.dart';
import 'package:webview_skops/presentation/setting/pages/user/user_edit_page.dart';

class UserItem extends StatefulWidget {
  final SingleUser data;
  const UserItem({super.key, required this.data});

  @override
  State<UserItem> createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
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
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: EditUserPage(data: widget.data),
                      withNavBar: false, // ⬅️ navbar hilang
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.data.username ?? "",
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
                  if (widget.data.idx != 1) {
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
                                final bloc = context.read<UserBloc>();
                                bloc.add(
                                  UserEvent.deleteUser(widget.data.idx!),
                                );
                                bloc.add(const UserEvent.loadUser());
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
            widget.data.nama ?? '',
            style: const TextStyle(fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SpaceHeight(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Level'),
                  Text(
                    widget.data.level?.toTitleCase() ?? '',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text('Status'),
                  Container(
                    padding: EdgeInsets.fromLTRB(8,1,8,1),
                    decoration: BoxDecoration(
                      color: widget.data.status == 'Aktif'
                          ? Colors.green
                          : Colors.red,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      widget.data.status ?? '',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
