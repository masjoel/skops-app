import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/buttons.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/master/bloc/guru/guru_bloc.dart';
import 'package:webview_skops/presentation/master/models/guru_request_model.dart';
import 'package:webview_skops/presentation/setting/bloc/ekstensi/ekstensi_bloc.dart';
import 'package:webview_skops/presentation/setting/bloc/jurusan/jurusan_bloc.dart';
import 'package:webview_skops/presentation/setting/bloc/kelas/kelas_bloc.dart';
import 'package:webview_skops/presentation/setting/models/ekstensi_response_model.dart';
import 'package:webview_skops/presentation/setting/models/jurusan_response_model.dart';
import 'package:webview_skops/presentation/setting/models/kelas_response_model.dart';

class AddGuruPage extends StatefulWidget {
  const AddGuruPage({super.key});

  @override
  State<AddGuruPage> createState() => _AddGuruPageState();
}

class _AddGuruPageState extends State<AddGuruPage> {
  late TextEditingController namaController;
  late TextEditingController nisController;
  late TextEditingController nisnController;
  bool _hasPopped = false;
  Kelas? selectKelas;
  KelasExt? selectExt;
  Jurusan? selectJurusan;

  @override
  void initState() {
    namaController = TextEditingController();
    nisController = TextEditingController();
    nisnController = TextEditingController();
    context.read<KelasBloc>().add(const KelasEvent.fetch());
    context.read<EkstensiBloc>().add(const EkstensiEvent.fetch());
    context.read<JurusanBloc>().add(const JurusanEvent.fetch());
    super.initState();
  }

  @override
  void dispose() {
    namaController.dispose();
    nisController.dispose();
    nisnController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'Tambah Guru',
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
              controller: namaController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Nama Guru',
              ),
            ),
            const SpaceHeight(8.0),
            TextField(
              controller: nisController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'NIP',
              ),
            ),
            const SpaceHeight(8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: BlocConsumer<KelasBloc, KelasState>(
                    listener: (context, state) {
                      if (state is KelasSuccess) {
                        selectKelas = selectKelas ?? state.kelas.first;
                      }
                    },
                    builder: (context, state) {
                      switch (state) {
                        case KelasInitial():
                          return const Text('kelas tidak ada');
                        case KelasLoading():
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        case KelasSuccess():
                          return buildKelasDropdown(state.kelas);
                        case Error():
                          return Text('Belum ada data');
                      }
                      return SizedBox.shrink();
                    },
                  ),
                ),
                SpaceWidth(16),
                Expanded(
                  child: BlocConsumer<EkstensiBloc, EkstensiState>(
                    listener: (context, state) {
                      if (state is EkstensiSuccess) {
                        selectExt = selectExt ?? state.ekstensi.first;
                      }
                    },
                    builder: (context, state) {
                      switch (state) {
                        case EkstensiInitial():
                          return const Text('ext. tidak ada');
                        case EkstensiLoading():
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        case EkstensiSuccess():
                          return buildExtDropdown(state.ekstensi);
                        case Error():
                          return Text('Belum ada data');
                      }
                      return SizedBox.shrink();
                    },
                  ),
                ),
              ],
            ),
            const SpaceHeight(8.0),
            Row(
              children: [
                Expanded(
                  child: BlocConsumer<JurusanBloc, JurusanState>(
                    listener: (context, state) {
                      if (state is JurusanSuccess) {
                        selectJurusan = selectJurusan ?? state.jurusan.first;
                      }
                    },
                    builder: (context, state) {
                      switch (state) {
                        case JurusanInitial():
                          return const Text('jurusan tidak ada');
                        case JurusanLoading():
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        case JurusanSuccess():
                          return buildJurusanDropdown(state.jurusan);
                        case Error():
                          return Text('Belum ada data');
                      }
                      return SizedBox.shrink();
                    },
                  ),
                ),
              ],
            ),

            const SpaceHeight(20.0),
            BlocConsumer<GuruBloc, GuruState>(
              listener: (context, state) {
                if (state is GuruSukses && !_hasPopped) {
                  _hasPopped = true;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Guru berhasil ditambahkan'),
                      backgroundColor: AppColors.primary,
                    ),
                  );
                  Navigator.pop(context, true);
                }
                if (state is GuruError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: AppColors.red,
                    ),
                  );
                }
              },
              builder: (context, state) {
                final bool isLoading = state is GuruLoading;
                return Button.filled(
                  color: AppColors.primary,
                  onPressed: () {
                    if (state is GuruLoading) return;

                    context.read<GuruBloc>().add(
                      GuruEvent.addGuru(
                        GuruRequestModel(
                          nama: namaController.text,
                          nip: nisController.text,
                          kelas: selectKelas!.name,
                          ext: selectExt!.name,
                          jurusan: selectJurusan!.name,
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

  Widget buildKelasDropdown(List<Kelas> kelas) {
    return DropdownButtonFormField<Kelas>(
      isExpanded: true,
      value: selectKelas,
      decoration: InputDecoration(
        labelText: 'Kelas',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
      ),
      items: kelas.map((val) {
        return DropdownMenuItem<Kelas>(value: val, child: Text(val.name));
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectKelas = value;
        });
      },
    );
  }

  Widget buildExtDropdown(List<KelasExt> ekstensi) {
    return DropdownButtonFormField<KelasExt>(
      isExpanded: true,
      value: selectExt,
      decoration: InputDecoration(
        labelText: 'Ext.',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
      ),
      items: ekstensi.map((val) {
        return DropdownMenuItem<KelasExt>(value: val, child: Text(val.name));
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectExt = value;
        });
      },
    );
  }

  Widget buildJurusanDropdown(List<Jurusan> jurusan) {
    return DropdownButtonFormField<Jurusan>(
      isExpanded: true,
      value: selectJurusan,
      decoration: InputDecoration(
        labelText: 'Jurusan',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
      ),
      items: jurusan.map((val) {
        return DropdownMenuItem<Jurusan>(value: val, child: Text(val.name));
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectJurusan = value;
        });
      },
    );
  }
}
