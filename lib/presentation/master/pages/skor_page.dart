import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:webview_skops/core/components/search_input.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/master/bloc/skor/skor_bloc.dart';
import 'package:webview_skops/presentation/master/pages/skor_add_page.dart';
import 'package:webview_skops/presentation/master/widgets/skor_item.dart';

class SkorPage extends StatefulWidget {
  const SkorPage({super.key});

  @override
  State<SkorPage> createState() => _SkorPageState();
}

class _SkorPageState extends State<SkorPage> {
  final searchController = TextEditingController();

  Timer? _debounce;

  @override
  void initState() {
    context.read<SkorBloc>().add(const SkorEvent.fetch());

    super.initState();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: SearchInput(
          controller: searchController,
          onChanged: (value) {
            _debounce?.cancel();

            _debounce = Timer(const Duration(milliseconds: 400), () {
              if (value.length > 1) {
                context.read<SkorBloc>().add(SkorEvent.searchSkor(value));
              }
              if (value.isEmpty) {
                context.read<SkorBloc>().add(const SkorEvent.searchSkor(''));
              }
            });
          },
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<SkorBloc, SkorState>(
          builder: (context, state) {
            switch (state) {
              case SkorSuccess():
                return ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                    bottom: 100,
                  ),

                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.skor.length,
                  separatorBuilder: (context, index) => const SpaceHeight(16.0),
                  itemBuilder: (context, index) =>
                      SkorItem(data: state.skor[index]),
                );
              default:
                return Center(child: const CircularProgressIndicator());
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await PersistentNavBarNavigator.pushNewScreen(
            context,
            screen: const AddSkorPage(),
            withNavBar: false,
          );
          if (result == true && mounted) {
            context.read<SkorBloc>().add(const SkorEvent.fetch());
          }
        },
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
