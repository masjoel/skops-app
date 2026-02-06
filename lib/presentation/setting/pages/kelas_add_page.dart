import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/buttons.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/setting/bloc/kelas/kelas_bloc.dart';
import 'package:webview_skops/presentation/setting/models/kelas_request_model.dart';

class AddKelasPage extends StatefulWidget {
  const AddKelasPage({super.key});

  @override
  State<AddKelasPage> createState() => _AddKelasPageState();
}

class _AddKelasPageState extends State<AddKelasPage> {
  late TextEditingController nameController;
  bool _hasPopped = false;

  @override
  void initState() {
    nameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'Tambah Kelas',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24.0),
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Nama Kelas',
              ),
            ),
            const SpaceHeight(20.0),
            BlocConsumer<KelasBloc, KelasState>(
              listener: (context, state) {
                if (state is KelasSuccess && !_hasPopped) {
                  _hasPopped = true;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Kelas berhasil ditambahkan'),
                      backgroundColor: AppColors.primary,
                    ),
                  );
                  Navigator.pop(context, true);
                }
                if (state is KelasError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: AppColors.red,
                    ),
                  );
                }
              },
              builder: (context, state) {
                final bool isLoading = state is KelasLoading;
                return Button.filled(
                  color: AppColors.primary,
                  onPressed: () {
                    if (state is KelasLoading) return;

                    final name = nameController.text;
                    context.read<KelasBloc>().add(
                      KelasEvent.addKelas(KelasRequestModel(name: name)),
                    );
                  },
                  label: isLoading ? 'Menyimpan...' : 'Simpan',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
