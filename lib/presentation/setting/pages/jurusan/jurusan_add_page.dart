import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/buttons.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/setting/bloc/jurusan/jurusan_bloc.dart';
import 'package:webview_skops/presentation/setting/models/jurusan_request_model.dart';

class AddJurusanPage extends StatefulWidget {
  const AddJurusanPage({super.key});

  @override
  State<AddJurusanPage> createState() => _AddJurusanPageState();
}

class _AddJurusanPageState extends State<AddJurusanPage> {
  late TextEditingController nameController;
  late TextEditingController kodeController;
  bool _hasPopped = false;

  @override
  void initState() {
    nameController = TextEditingController();
    kodeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    kodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'Tambah Jurusan',
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
              controller: kodeController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Kode',
              ),
            ),
            SpaceHeight(8),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Nama Jurusan',
              ),
            ),
            const SpaceHeight(20.0),
            BlocConsumer<JurusanBloc, JurusanState>(
              listener: (context, state) {
                if (state is JurusanSuccess && !_hasPopped) {
                  _hasPopped = true;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Jurusan berhasil ditambahkan'),
                      backgroundColor: AppColors.primary,
                    ),
                  );
                  Navigator.pop(context, true);
                }
                if (state is JurusanError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: AppColors.red,
                    ),
                  );
                }
              },
              builder: (context, state) {
                final bool isLoading = state is JurusanLoading;
                return Button.filled(
                  color: AppColors.primary,
                  onPressed: () {
                    if (state is JurusanLoading) return;

                    final name = nameController.text;
                    context.read<JurusanBloc>().add(
                      JurusanEvent.addJurusan(
                        JurusanRequestModel(
                          name: name,
                          kode: kodeController.text,
                        ),
                      ),
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
