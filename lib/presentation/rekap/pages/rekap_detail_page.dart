import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_skops/core/components/spaces.dart';
import 'package:webview_skops/core/constants/colors.dart';
import 'package:webview_skops/presentation/rekap/bloc/rekap_detail/rekap_detail_bloc.dart';
import 'package:webview_skops/presentation/rekap/models/rekap_response_model.dart';
import 'package:webview_skops/core/components/search_input.dart';
import 'package:webview_skops/presentation/rekap/widgets/rekap_detail_item.dart';

class DetailRekapPage extends StatefulWidget {
  final RekapSingle data;
  const DetailRekapPage({super.key, required this.data});

  @override
  State<DetailRekapPage> createState() => _DetailRekapPageState();
}

class _DetailRekapPageState extends State<DetailRekapPage> {
  final searchController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  Timer? _debounce;
  String? selectedSemester;

  @override
  void initState() {
    scrollController.addListener(_onScroll);
    context.read<RekapDetailBloc>().add(
      RekapDetailEvent.loadRekapDetail(widget.data.idsiswa),
    );

    super.initState();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    searchController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<RekapDetailBloc>().add(
        RekapDetailEvent.loadMore(widget.data.idsiswa),
      );
    }
  }

  bool get _isBottom {
    if (!scrollController.hasClients) return false;
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'Detail Rekap',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<RekapDetailBloc>().add(
              RekapDetailEvent.refresh(widget.data.idsiswa),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(16, 8, 16, 0),
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.white, width: 0.5),
                  boxShadow: List.filled(
                    1,
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 0.0,
                      blurStyle: BlurStyle.outer,
                      spreadRadius: 1,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data.nama,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Kelas : ${widget.data.kelas} ${widget.data.ext} ${widget.data.jurusan}',
                    ),
                    Text('NIS : ${widget.data.nis}'),
                    Text('NISN : ${widget.data.nisn}'),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SpaceHeight(16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: SearchInput(
                        controller: searchController,
                        onChanged: (value) {
                          _debounce?.cancel();

                          _debounce = Timer(
                            const Duration(milliseconds: 400),
                            () {
                              context.read<RekapDetailBloc>().add(
                                RekapDetailEvent.searchRekapDetail(
                                  value,
                                  widget.data.idsiswa,
                                  selectedSemester == 'Semua'
                                      ? ''
                                      : selectedSemester,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),

                    const SizedBox(width: 8),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.white, width: 0.5),
                        ),

                        child: buildSemesterDropdown(),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<RekapDetailBloc, RekapDetailState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () =>
                          const Center(child: Text('Tarik untuk memuat data')),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      loaded: (rekap) {
                        if (rekap.isEmpty) {
                          return const Center(
                            child: Text('Tidak ada data rekap'),
                          );
                        }
                        return ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          controller: scrollController,
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 16,
                            bottom: 100,
                          ),
                          itemCount: rekap.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 16),
                          itemBuilder: (context, index) {
                            return RekapDetailItem(data: rekap[index]);
                          },
                        );
                      },
                      sukses: (rekap) {
                        if (rekap.isEmpty) {
                          return const Center(
                            child: Text('Tidak ada data rekap'),
                          );
                        }
                        return ListView.separated(
                          controller: scrollController,
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 16,
                            bottom: 100,
                          ),
                          itemCount: rekap.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 16),
                          itemBuilder: (context, index) {
                            return RekapDetailItem(data: rekap[index]);
                          },
                        );
                      },
                      success:
                          (
                            rekap,
                            currentPage,
                            lastPage,
                            hasReachedMax,
                            isLoadingMore,
                          ) {
                            if (rekap.isEmpty) {
                              return const Center(
                                child: Text('Tidak ada data rekap'),
                              );
                            }

                            return ListView.separated(
                              controller: scrollController,
                              padding: const EdgeInsets.only(
                                left: 16,
                                right: 16,
                                top: 16,
                                bottom: 100,
                              ),
                              itemCount: rekap.length + (isLoadingMore ? 1 : 0),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 16),
                              itemBuilder: (context, index) {
                                if (index >= rekap.length) {
                                  return const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                                return RekapDetailItem(data: rekap[index]);
                              },
                            );
                          },
                      error: (message) => Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(message),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                context.read<RekapDetailBloc>().add(
                                  RekapDetailEvent.loadRekapDetail(
                                    widget.data.idsiswa,
                                  ),
                                );
                              },
                              child: const Text('Coba Lagi'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSemesterDropdown() {
    final List<String> semesters = ['Semua', '1', '2'];

    return DropdownButtonFormField<String>(
      isExpanded: true,
      value: selectedSemester,
      decoration: InputDecoration(
        labelText: 'Semester',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.all(8),
      ),
      items: semesters.map((val) {
        return DropdownMenuItem<String>(value: val, child: Text(val));
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectedSemester = value;
        });
        context.read<RekapDetailBloc>().add(
          RekapDetailEvent.searchRekapDetail(
            searchController.text,
            widget.data.idsiswa,
            selectedSemester == 'Semua' ? '' : selectedSemester,
          ),
        );
      },
    );
  }
}
