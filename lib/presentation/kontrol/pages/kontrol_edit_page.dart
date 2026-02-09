import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:webview_skops/core/components/buttons.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/core/constants/string_extension.dart';
import 'package:webview_skops/core/extensions/string_ext.dart';
import 'package:webview_skops/presentation/kontrol/bloc/kontrol/kontrol_bloc.dart';
import 'package:webview_skops/presentation/kontrol/models/kontrol_response_model.dart';
import 'package:webview_skops/presentation/master/bloc/guru/guru_bloc.dart';
import 'package:webview_skops/presentation/master/bloc/siswa/siswa_bloc.dart';
import 'package:webview_skops/presentation/master/bloc/skor/skor_bloc.dart';
import 'package:webview_skops/presentation/master/models/guru_response_model.dart';
import 'package:webview_skops/presentation/master/models/siswa_response_model.dart';
import 'package:webview_skops/presentation/master/models/skor_master_response_model.dart';

class EditKontrolPage extends StatefulWidget {
  final Kontrol data;
  const EditKontrolPage({super.key, required this.data});

  @override
  State<EditKontrolPage> createState() => _EditKontrolPageState();
}

class _EditKontrolPageState extends State<EditKontrolPage> {
  late TextEditingController tglController;
  late TextEditingController semesterController;
  late TextEditingController siswaController;
  late TextEditingController guruController;
  late TextEditingController poinController;
  late TextEditingController siswaIdController;
  late TextEditingController guruIdController;
  late TextEditingController poinIdController;
  late TextEditingController skorController;
  late TextEditingController tindakanController;
  bool _hasPopped = false;
  Guru? selectGuru;
  Siswa? selectSiswa;
  Skor? selectSkor;

  @override
  void initState() {
    tglController = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(widget.data.tgl),
    );
    semesterController = TextEditingController(
      text: widget.data.semester.toString(),
    );
    siswaController = TextEditingController(text: widget.data.namasiswa);
    guruController = TextEditingController(text: widget.data.namaguru);
    poinController = TextEditingController(text: widget.data.jenis);
    siswaIdController = TextEditingController(
      text: widget.data.idsiswa.toString(),
    );
    guruIdController = TextEditingController(
      text: widget.data.idguru.toString(),
    );
    poinIdController = TextEditingController(
      text: widget.data.idskor.toString(),
    );
    skorController = TextEditingController(text: widget.data.skor.toString());
    tindakanController = TextEditingController();
    context.read<GuruBloc>().add(const GuruEvent.listGuru('Aktif'));
    context.read<SiswaBloc>().add(const SiswaEvent.listSiswa(''));
    context.read<SkorBloc>().add(const SkorEvent.fetch());
    super.initState();
  }

  @override
  void dispose() {
    tglController.dispose();
    semesterController.dispose();
    siswaController.dispose();
    guruController.dispose();
    poinController.dispose();
    siswaIdController.dispose();
    guruIdController.dispose();
    poinIdController.dispose();
    skorController.dispose();
    tindakanController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'Edit Poin/Reward',
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
              controller: tglController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Tanggal',
                suffixIcon: Icon(Icons.calendar_today),
              ),
              readOnly: true,
              onTap: () => _showDatePicker(context),
            ),
            const SpaceHeight(8.0),
            TextField(
              controller: semesterController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Semester',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                final int semesterValue = value.toIntegerFromText;
                semesterController.text = semesterValue.toString();
                semesterController.selection = TextSelection.fromPosition(
                  TextPosition(offset: semesterController.text.length),
                );
              },
            ),
            const SpaceHeight(8.0),
            TextField(
              controller: siswaController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Siswa',
                suffixIcon: Icon(Icons.search),
              ),
              readOnly: true,
              onTap: () => _showSiswaSearchDialog(context),
            ),
            const SpaceHeight(8.0),
            TextField(
              controller: guruController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Guru',
                suffixIcon: Icon(Icons.search),
              ),
              readOnly: true,
              onTap: () => _showGuruSearchDialog(context),
            ),
            const SpaceHeight(8.0),
            TextField(
              controller: poinController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                labelText: 'Poin/Reward',
                suffixIcon: Icon(Icons.search),
              ),
              readOnly: true,
              onTap: () => _showPoinSearchDialog(context),
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
            BlocConsumer<KontrolBloc, KontrolState>(
              listener: (context, state) {
                if (state is KontrolSukses && !_hasPopped) {
                  _hasPopped = true;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Kontrol berhasil diupdate'),
                      backgroundColor: AppColors.primary,
                    ),
                  );
                  Navigator.pop(context, true);
                }
                if (state is KontrolError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: AppColors.red,
                    ),
                  );
                }
              },
              builder: (context, state) {
                final bool isLoading = state is KontrolLoading;
                return Button.filled(
                  color: AppColors.primary,
                  onPressed: () {
                    if (state is KontrolLoading) return;
                    context.read<KontrolBloc>().add(
                      KontrolEvent.updateKontrol(
                        Kontrol(
                          id: widget.data.id,
                          idguru: guruIdController.text.toIntegerFromText,
                          idsiswa: siswaIdController.text.toIntegerFromText,
                          idskor: poinIdController.text.toIntegerFromText,
                          iduser: widget.data.iduser,
                          tgl: DateTime.parse(tglController.text),
                          jenis: widget.data.jenis,
                          tipe: widget.data.tipe,
                          skor: skorController.text.toIntegerFromText,
                          tindakan: tindakanController.text,
                          deskripsi: widget.data.deskripsi,
                          jam: widget.data.jam,
                          kelas: widget.data.kelas,
                          ext: widget.data.ext,
                          jurusan: widget.data.jurusan,
                          semester: semesterController.text.toIntegerFromText,
                          isReset: widget.data.isReset,
                          namaguru: widget.data.namaguru,
                          namasiswa: widget.data.namasiswa,
                          opr: widget.data.opr,
                        ),
                      ),
                    );
                    context.read<KontrolBloc>().add(
                      const KontrolEvent.loadKontrol(),
                    );

                    // context.read<KontrolBloc>().add(
                    //   KontrolEvent.addKontrol(
                    //     KontrolRequestModel(
                    //       tgl: DateTime.parse(tglController.text),
                    //       semester: semesterController.text.toIntegerFromText,
                    //       idsiswa: siswaIdController.text.toIntegerFromText,
                    //       idguru: guruIdController.text.toIntegerFromText,
                    //       idskor: poinIdController.text.toIntegerFromText,
                    //       tindakan: tindakanController.text,
                    //     ),
                    //   ),
                    // );
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

  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      // Format date as YYYY-MM-DD
      final formattedDate =
          '${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}';
      setState(() {
        tglController.text = formattedDate;
      });
    }
  }

  void _showSiswaSearchDialog(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) {
        return BlocProvider.value(
          value: context.read<SiswaBloc>(),
          child: StatefulBuilder(
            builder: (context, setState) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.7,
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Cari Siswa',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SpaceHeight(16.0),
                      TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          hintText: 'Cari nama siswa...',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        onChanged: (value) {
                          context.read<SiswaBloc>().add(
                            SiswaEvent.listSiswa(value),
                          );
                        },
                      ),
                      const SpaceHeight(16.0),
                      Expanded(
                        child: BlocBuilder<SiswaBloc, SiswaState>(
                          builder: (context, state) {
                            if (state is SiswaLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }

                            if (state is SiswaSukses) {
                              final students = state.siswa;

                              if (students.isEmpty) {
                                return const Center(
                                  child: Text('Tidak ada siswa ditemukan'),
                                );
                              }

                              return ListView.separated(
                                itemCount: students.length,
                                separatorBuilder: (context, index) =>
                                    const Divider(),
                                itemBuilder: (context, index) {
                                  final siswa = students[index];
                                  return ListTile(
                                    title: Text(
                                      siswa.nama,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Kelas: ${siswa.kelas} ${siswa.ext} ${siswa.jurusan}',
                                    ),
                                    onTap: () {
                                      // Set the selected student
                                      this.setState(() {
                                        selectSiswa = siswa;
                                        siswaController.text = siswa.nama;
                                        siswaIdController.text = siswa.id
                                            .toString();
                                      });

                                      Navigator.pop(dialogContext);
                                    },
                                  );
                                },
                              );
                            }

                            if (state is SiswaError) {
                              return Center(
                                child: Text(
                                  state.message,
                                  style: const TextStyle(color: AppColors.red),
                                ),
                              );
                            }

                            return const Center(
                              child: Text('Mulai cari siswa'),
                            );
                          },
                        ),
                      ),
                      const SpaceHeight(16.0),
                      SizedBox(
                        width: double.infinity,
                        child: Button.outlined(
                          onPressed: () => Navigator.pop(dialogContext),
                          label: 'Batal',
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void _showGuruSearchDialog(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) {
        return BlocProvider.value(
          value: context.read<GuruBloc>(),
          child: StatefulBuilder(
            builder: (context, setState) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.7,
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Cari Guru',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SpaceHeight(16.0),
                      TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          hintText: 'Cari nama guru...',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        onChanged: (value) {
                          context.read<GuruBloc>().add(
                            GuruEvent.listGuru(value),
                          );
                        },
                      ),
                      const SpaceHeight(16.0),
                      Expanded(
                        child: BlocBuilder<GuruBloc, GuruState>(
                          builder: (context, state) {
                            if (state is GuruLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }

                            if (state is GuruSukses) {
                              final teachers = state.guru;

                              if (teachers.isEmpty) {
                                return const Center(
                                  child: Text('Tidak ada guru ditemukan'),
                                );
                              }

                              return ListView.separated(
                                itemCount: teachers.length,
                                separatorBuilder: (context, index) =>
                                    const Divider(),
                                itemBuilder: (context, index) {
                                  final guru = teachers[index];
                                  return ListTile(
                                    title: Text(
                                      guru.nama,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Kelas: ${guru.kelas} ${guru.ext} ${guru.jurusan}',
                                    ),
                                    onTap: () {
                                      this.setState(() {
                                        selectGuru = guru;
                                        guruController.text = guru.nama;
                                        guruIdController.text = guru.id
                                            .toString();
                                      });

                                      Navigator.pop(dialogContext);
                                    },
                                  );
                                },
                              );
                            }

                            if (state is GuruError) {
                              return Center(
                                child: Text(
                                  state.message,
                                  style: const TextStyle(color: AppColors.red),
                                ),
                              );
                            }

                            return const Center(child: Text('Mulai cari guru'));
                          },
                        ),
                      ),
                      const SpaceHeight(16.0),
                      SizedBox(
                        width: double.infinity,
                        child: Button.outlined(
                          onPressed: () => Navigator.pop(dialogContext),
                          label: 'Batal',
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void _showPoinSearchDialog(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) {
        return BlocProvider.value(
          value: context.read<SiswaBloc>(),
          child: StatefulBuilder(
            builder: (context, setState) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.7,
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Cari Poin/Reward',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SpaceHeight(16.0),
                      TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          hintText: 'Cari poin/reward...',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        onChanged: (value) {
                          context.read<SkorBloc>().add(
                            SkorEvent.searchSkor(value),
                          );
                        },
                      ),
                      const SpaceHeight(16.0),
                      Expanded(
                        child: BlocBuilder<SkorBloc, SkorState>(
                          builder: (context, state) {
                            if (state is SkorLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }

                            if (state is SkorSuccess) {
                              final points = state.skor;

                              if (points.isEmpty) {
                                return const Center(
                                  child: Text(
                                    'Tidak ada poin/reward ditemukan',
                                  ),
                                );
                              }

                              return ListView.separated(
                                itemCount: points.length,
                                separatorBuilder: (context, index) =>
                                    const Divider(),
                                itemBuilder: (context, index) {
                                  final poin = points[index];
                                  return ListTile(
                                    title: Text(
                                      poin.jenis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    subtitle: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          poin.tipe.toTitleCase(),
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                            color: poin.tipe == 'reward'
                                                ? Colors.green.shade700
                                                : AppColors.red,
                                          ),
                                        ),
                                        Text(
                                          poin.skor.toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: poin.tipe == 'reward'
                                                ? Colors.green.shade700
                                                : AppColors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                    onTap: () {
                                      // Set the selected student
                                      this.setState(() {
                                        selectSkor = poin;
                                        poinController.text = poin.jenis;
                                        poinIdController.text = poin.id
                                            .toString();
                                        skorController.text = poin.skor
                                            .toString();
                                        tindakanController.text = poin.tindakan;
                                      });

                                      Navigator.pop(dialogContext);
                                    },
                                  );
                                },
                              );
                            }

                            if (state is SkorError) {
                              return Center(
                                child: Text(
                                  state.message,
                                  style: const TextStyle(color: AppColors.red),
                                ),
                              );
                            }

                            return const Center(
                              child: Text('Mulai cari poin/reward'),
                            );
                          },
                        ),
                      ),
                      const SpaceHeight(16.0),
                      SizedBox(
                        width: double.infinity,
                        child: Button.outlined(
                          onPressed: () => Navigator.pop(dialogContext),
                          label: 'Batal',
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
