import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/setting/bloc/kelas/kelas_bloc.dart';
import 'package:webview_skops/presentation/setting/pages/kelas/kelas_add_page.dart';
import 'package:webview_skops/presentation/setting/widgets/kelas_item.dart';

class KelasPage extends StatefulWidget {
  const KelasPage({super.key});

  @override
  State<KelasPage> createState() => _KelasPageState();
}

class _KelasPageState extends State<KelasPage> {
  @override
  void initState() {
    super.initState();
    context.read<KelasBloc>().add(const KelasEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(
        bottom: true,
        child: ListView(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 24,
            bottom: 100, // ruang untuk FAB
          ),
          children: [
            BlocBuilder<KelasBloc, KelasState>(
              builder: (context, state) {
                switch (state) {
                  case KelasSuccess():
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.kelas.length,
                      separatorBuilder: (context, index) =>
                          const SpaceHeight(16.0),
                      itemBuilder: (context, index) =>
                          KelasItem(data: state.kelas[index]),
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
                return const AddKelasPage();
              },
            ),
          );
          if (result == true && mounted) {
            context.read<KelasBloc>().add(const KelasEvent.fetch());
          }
        },
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
