import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/buttons.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/setting/bloc/ekstensi/ekstensi_bloc.dart';
import 'package:webview_skops/presentation/setting/models/ekstensi_response_model.dart';

class EditEkstensiPage extends StatefulWidget {
  final KelasExt data;
  const EditEkstensiPage({super.key, required this.data});

  @override
  State<EditEkstensiPage> createState() => _EditEkstensiPageState();
}

class _EditEkstensiPageState extends State<EditEkstensiPage> {
    late TextEditingController nameController;
  bool _hasPopped = false;
  @override
  void initState() {
    nameController = TextEditingController(text: widget.data.name);
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
          'Edit Ekstensi',
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
                labelText: 'Nama Ekstensi',
              ),
            ),
            const SpaceHeight(20.0),
            BlocConsumer<EkstensiBloc, EkstensiState>(
              listener: (context, state) {
                if (state is EkstensiSuccess && !_hasPopped) {
                  _hasPopped = true;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Ekstensi berhasil diupdate'),
                      backgroundColor: AppColors.primary,
                    ),
                  );
                  Navigator.pop(context, true);
                }
                if (state is EkstensiError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: AppColors.red,
                    ),
                  );
                }
              },
              builder: (context, state) {
                final bool isLoading = state is EkstensiLoading;
                return Button.filled(
                  color: AppColors.primary,
                  onPressed: () {
                    if (state is EkstensiLoading) return;

                    final name = nameController.text;
                    context.read<EkstensiBloc>().add(
                      EkstensiEvent.updateEkstensi(
                        KelasExt(
                          name: name,
                          id: widget.data.id,
                          perusahaanId: widget.data.perusahaanId,
                          userId: widget.data.userId,
                          createdAt: widget.data.createdAt,
                          updatedAt: widget.data.updatedAt,
                        ),
                      ),
                    );
                    context.read<EkstensiBloc>().add(const EkstensiEvent.fetch());
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
