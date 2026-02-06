import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/setting/bloc/ekstensi/ekstensi_bloc.dart';
import 'package:webview_skops/presentation/setting/pages/ekstensi_add_page.dart';
import 'package:webview_skops/widgets/setting/ekstensi_item.dart';

class EkstensiPage extends StatefulWidget {
  const EkstensiPage({super.key});

  @override
  State<EkstensiPage> createState() => _EkstensiPageState();
}

class _EkstensiPageState extends State<EkstensiPage> {
  @override
  void initState() {
    context.read<EkstensiBloc>().add(const EkstensiEvent.fetch());
    super.initState();
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
            BlocBuilder<EkstensiBloc, EkstensiState>(
              builder: (context, state) {
                switch (state) {
                  case EkstensiSuccess():
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.ekstensi.length,
                      separatorBuilder: (context, index) =>
                          const SpaceHeight(16.0),
                      itemBuilder: (context, index) =>
                          EkstensiItem(data: state.ekstensi[index]),
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
                return const AddEkstensiPage();
              },
            ),
          );
          if (result == true && mounted) {
            context.read<EkstensiBloc>().add(const EkstensiEvent.fetch());
          }
        },
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
