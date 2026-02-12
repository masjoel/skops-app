import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/buttons.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/core/extensions/string_ext.dart';
import 'package:webview_skops/presentation/master/bloc/skor/skor_bloc.dart';
import 'package:webview_skops/presentation/master/models/skor_request_model.dart';

class AddSkorPage extends StatefulWidget {
  const AddSkorPage({super.key});

  @override
  State<AddSkorPage> createState() => _AddSkorPageState();
}

class _AddSkorPageState extends State<AddSkorPage> {
  late TextEditingController urutController;
  late TextEditingController kodeController;
  late TextEditingController jenisController;
  late TextEditingController deskripsiController;
  late TextEditingController tindakanController;
  late TextEditingController skorController;
  String? selectTipe;
  bool _hasPopped = false;

  @override
  void initState() {
    urutController = TextEditingController();
    kodeController = TextEditingController();
    jenisController = TextEditingController();
    deskripsiController = TextEditingController();
    tindakanController = TextEditingController();
    skorController = TextEditingController();
    selectTipe = 'pelanggaran';
    super.initState();
  }

  @override
  void dispose() {
    urutController.dispose();
    kodeController.dispose();
    jenisController.dispose();
    deskripsiController.dispose();
    tindakanController.dispose();
    skorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'Tambah Jenis Poin',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24.0),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    controller: kodeController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      labelText: 'Kode',
                    ),
                  ),
                ),
                SpaceWidth(24.0),
                Expanded(
                  child: TextField(
                    controller: urutController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      labelText: 'No. Urut',
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      final int urutValue = value.toIntegerFromText;
                      urutController.text = urutValue.toString();
                      urutController.selection = TextSelection.fromPosition(
                        TextPosition(offset: urutController.text.length),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SpaceHeight(8.0),
            TextField(
              controller: jenisController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Deskripsi',
              ),
              maxLines: 2,
            ),
            const SpaceHeight(8.0),
            buildTipeDropdown(),
            const SpaceHeight(8.0),
            TextField(
              controller: deskripsiController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Keterangan',
              ),
              maxLines: 1,
            ),
            const SpaceHeight(8.0),
            TextField(
              controller: skorController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Skor',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                final int skorValue = value.toIntegerFromText;
                skorController.text = skorValue.toString();
                skorController.selection = TextSelection.fromPosition(
                  TextPosition(offset: skorController.text.length),
                );
              },
            ),
            const SpaceHeight(8.0),
            TextField(
              controller: tindakanController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Tindakan',
              ),
              maxLines: 2,
            ),
            const SpaceHeight(20.0),
            BlocConsumer<SkorBloc, SkorState>(
              listener: (context, state) {
                if (state is SkorSuccess && !_hasPopped) {
                  _hasPopped = true;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Data Skor berhasil ditambahkan'),
                      backgroundColor: AppColors.primary,
                    ),
                  );
                  Navigator.pop(context, true);
                }
                if (state is SkorError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: AppColors.red,
                    ),
                  );
                }
              },
              builder: (context, state) {
                final bool isLoading = state is SkorLoading;
                return Button.filled(
                  color: AppColors.primary,
                  onPressed: () {
                    if (state is SkorLoading) return;
                    context.read<SkorBloc>().add(
                      SkorEvent.addSkor(
                        SkorRequestModel(
                          kode: kodeController.text,
                          urut: urutController.text.toIntegerFromText,
                          jenis: jenisController.text,
                          deskripsi: deskripsiController.text,
                          tindakan: tindakanController.text,
                          skor: skorController.text.toIntegerFromText,
                          tipe: selectTipe.toString(),
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

  Widget buildTipeDropdown() {
    final List<String> statusOptions = ['pelanggaran', 'reward'];

    return DropdownButtonFormField<String>(
      isExpanded: true,
      value: selectTipe,
      decoration: InputDecoration(
        labelText: 'Jenis',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
      ),
      items: statusOptions.map((val) {
        return DropdownMenuItem<String>(value: val, child: Text(val));
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectTipe = value;
        });
      },
    );
  }
}
