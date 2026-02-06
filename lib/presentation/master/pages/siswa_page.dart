import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/master/bloc/siswa/siswa_bloc.dart';
import 'package:webview_skops/presentation/master/pages/siswa_add_page.dart';
import 'package:webview_skops/widgets/master/siswa_item.dart';

class SiswaPage extends StatefulWidget {
  const SiswaPage({super.key});

  @override
  State<SiswaPage> createState() => _SiswaPageState();
}

class _SiswaPageState extends State<SiswaPage> {
  @override
  void initState() {
    context.read<SiswaBloc>().add(const SiswaEvent.fetch());
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
            BlocBuilder<SiswaBloc, SiswaState>(
              builder: (context, state) {
                switch (state) {
                  case SiswaSuccess():
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.siswa.length,
                      separatorBuilder: (context, index) =>
                          const SpaceHeight(16.0),
                      itemBuilder: (context, index) =>
                          SiswaItem(data: state.siswa[index]),
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
          final result = await PersistentNavBarNavigator.pushNewScreen(
            context,
            screen: const AddSiswaPage(),
            withNavBar: false, // ⬅️ navbar hilang
          );
          if (result == true && mounted) {
            context.read<SiswaBloc>().add(const SiswaEvent.fetch());
          }
        },
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
