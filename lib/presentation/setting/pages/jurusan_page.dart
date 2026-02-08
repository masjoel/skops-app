import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/setting/bloc/jurusan/jurusan_bloc.dart';
import 'package:webview_skops/presentation/setting/pages/jurusan_add_page.dart';
import 'package:webview_skops/presentation/setting/widgets/jurusan_item.dart';

class JurusanPage extends StatefulWidget {
  const JurusanPage({super.key});

  @override
  State<JurusanPage> createState() => _JurusanPageState();
}

class _JurusanPageState extends State<JurusanPage> {
  @override
  void initState() {
    super.initState();
    context.read<JurusanBloc>().add(const JurusanEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 24,
            bottom: 100, // ruang untuk FAB
          ),
          children: [
            BlocBuilder<JurusanBloc, JurusanState>(
              builder: (context, state) {
                switch (state) {
                  case JurusanSuccess():
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.jurusan.length,
                      separatorBuilder: (context, index) =>
                          const SpaceHeight(16.0),
                      itemBuilder: (context, index) =>
                          JurusanItem(data: state.jurusan[index]),
                    );
                  default:
                    return const Text('No data');
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const AddJurusanPage();
              },
            ),
          );
          if (result == true && mounted) {
            context.read<JurusanBloc>().add(const JurusanEvent.fetch());
          }
        },
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
