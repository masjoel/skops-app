import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/buttons.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/setting/bloc/ekstensi/ekstensi_bloc.dart';
import 'package:webview_skops/presentation/setting/models/ekstensi_request_model.dart';

class AddEkstensiPage extends StatefulWidget {
  const AddEkstensiPage({super.key});

  @override
  State<AddEkstensiPage> createState() => _AddEkstensiPageState();
}

class _AddEkstensiPageState extends State<AddEkstensiPage> {
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
          'Tambah Ekstensi',
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
                      content: Text('Kelas berhasil ditambahkan'),
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
                      EkstensiEvent.addEkstensi(EkstensiRequestModel(name: name)),
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
