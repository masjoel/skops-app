import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/buttons.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/master/bloc/guru/guru_bloc.dart';
import 'package:webview_skops/presentation/master/models/guru_response_model.dart';
import 'package:webview_skops/presentation/setting/bloc/ekstensi/ekstensi_bloc.dart';
import 'package:webview_skops/presentation/setting/bloc/jurusan/jurusan_bloc.dart';
import 'package:webview_skops/presentation/setting/bloc/kelas/kelas_bloc.dart';
import 'package:webview_skops/presentation/setting/models/ekstensi_response_model.dart';
import 'package:webview_skops/presentation/setting/models/jurusan_response_model.dart';
import 'package:webview_skops/presentation/setting/models/kelas_response_model.dart';

class EditGuruPage extends StatefulWidget {
  final Guru data;

  const EditGuruPage({super.key, required this.data});

  @override
  State<EditGuruPage> createState() => _EditGuruPageState();
}

class _EditGuruPageState extends State<EditGuruPage> {
  late TextEditingController namaController;
  late TextEditingController nisController;
  bool _hasPopped = false;
  Kelas? selectKelas;
  KelasExt? selectExt;
  Jurusan? selectJurusan;
  String? selectStatus;

  @override
  void initState() {
    namaController = TextEditingController(text: widget.data.nama);
    nisController = TextEditingController(text: widget.data.nis);
    selectStatus = widget.data.status.isEmpty ? 'Aktif' : widget.data.status;
    context.read<KelasBloc>().add(const KelasEvent.fetch());
    context.read<EkstensiBloc>().add(const EkstensiEvent.fetch());
    context.read<JurusanBloc>().add(const JurusanEvent.fetch());
    super.initState();
  }

  @override
  void dispose() {
    namaController.dispose();
    nisController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'Edit Guru',
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
                        final exists = state.kelas.any(
                          (cat) => cat.name == widget.data.kelas,
                        );

                        if (!exists ||
                            widget.data.kelas == null ||
                            widget.data.kelas == '') {
                          selectKelas = selectKelas ?? state.kelas.first;
                        } else {
                          selectKelas = state.kelas.firstWhere(
                            (cat) => cat.name == widget.data.kelas,
                          );
                        }
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
                        final exists = state.ekstensi.any(
                          (cat) => cat.name == widget.data.ext,
                        );

                        if (!exists ||
                            widget.data.ext == null ||
                            widget.data.ext == '') {
                          selectExt = selectExt ?? state.ekstensi.first;
                        } else {
                          selectExt = state.ekstensi.firstWhere(
                            (cat) => cat.name == widget.data.ext,
                          );
                        }
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
                        final exists = state.jurusan.any(
                          (cat) => cat.name == widget.data.jurusan,
                        );

                        if (!exists ||
                            widget.data.jurusan == null ||
                            widget.data.jurusan == '') {
                          selectJurusan = selectJurusan ?? state.jurusan.first;
                        } else {
                          selectJurusan = state.jurusan.firstWhere(
                            (cat) => cat.name == widget.data.jurusan,
                          );
                        }
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
            const SpaceHeight(8.0),
            buildStatusDropdown(),
            const SpaceHeight(20.0),
            BlocConsumer<GuruBloc, GuruState>(
              listener: (context, state) {
                if (state is GuruSukses && !_hasPopped) {
                  _hasPopped = true;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Guru berhasil diupdate'),
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
                      GuruEvent.updateGuru(
                        Guru(
                          id: widget.data.id,
                          iduser: widget.data.iduser,
                          username: widget.data.username,
                          alamat: widget.data.alamat,
                          kota: widget.data.kota,
                          hp: widget.data.hp,
                          email: widget.data.email,
                          photo: widget.data.photo,
                          ket: widget.data.ket,
                          nama: namaController.text,
                          nis: nisController.text,
                          nisn: '',
                          kelas: selectKelas!.name,
                          ext: selectExt!.name,
                          jurusan: selectJurusan!.name,
                          status: selectStatus ?? 'Aktif',
                        ),
                      ),
                    );
                    context.read<GuruBloc>().add(
                      const GuruEvent.loadGuru(),
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

  Widget buildStatusDropdown() {
    final List<String> statusOptions = ['Aktif', 'Pensiun', 'Pindah', 'Lancar'];

    return DropdownButtonFormField<String>(
      isExpanded: true,
      value: selectStatus,
      decoration: InputDecoration(
        labelText: 'Status',
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
          selectStatus = value;
        });
      },
    );
  }
}
