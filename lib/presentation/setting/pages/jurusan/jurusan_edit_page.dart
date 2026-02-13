import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/buttons.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/setting/bloc/jurusan/jurusan_bloc.dart';
import 'package:webview_skops/presentation/setting/models/jurusan_response_model.dart';

class EditJurusanPage extends StatefulWidget {
  final Jurusan data;
  const EditJurusanPage({super.key, required this.data});

  @override
  State<EditJurusanPage> createState() => _EditJurusanPageState();
}

class _EditJurusanPageState extends State<EditJurusanPage> {
  late TextEditingController nameController;
  late TextEditingController kodeController;
  bool _hasPopped = false;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.data.name);
    kodeController = TextEditingController(text: widget.data.kode);
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
          'Edit Jurusan',
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
            const SpaceHeight(8.0),
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
                      content: Text('Jurusan berhasil diupdate'),
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
                    context.read<JurusanBloc>().add(
                      JurusanEvent.updateJurusan(
                        Jurusan(
                          kode: kodeController.text,
                          name: nameController.text,
                          id: widget.data.id,
                          perusahaanId: widget.data.perusahaanId,
                          userId: widget.data.userId,
                          createdAt: widget.data.createdAt,
                          updatedAt: widget.data.updatedAt,
                        ),
                      ),
                    );
                    context.read<JurusanBloc>().add(const JurusanEvent.fetch());
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
