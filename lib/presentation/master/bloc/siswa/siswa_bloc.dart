import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/master_remote_datasource.dart';
import 'package:webview_skops/data/models/response/siswa_response_model.dart';
import 'package:webview_skops/presentation/master/models/siswa_request_model.dart';

part 'siswa_event.dart';
part 'siswa_state.dart';
part 'siswa_bloc.freezed.dart';

class SiswaBloc extends Bloc<SiswaEvent, SiswaState> {
  final MasterRemoteDatasource masterRemoteDatasource;

  SiswaBloc(this.masterRemoteDatasource) : super(SiswaState.initial()) {
    on<_Fetch>((event, emit) async {
      emit(const SiswaState.loading());
      final response = await masterRemoteDatasource.getSiswa();
      response.fold((l) => emit(SiswaState.error(l)), (r) {
        emit(SiswaState.success(r.data.siswa));
      });
    });
    on<_AddSiswa>((event, emit) async {
      emit(const SiswaState.loading());
      final response = await masterRemoteDatasource.addSiswa(event.siswa);
            response.fold(
        (l) => emit(SiswaError(l)),
        (r) => emit(SiswaSuccess(r.data.siswa)),
      );
    });
    on<_UpdateSiswa>((event, emit) async {
      emit(const SiswaState.loading());
      final response = await masterRemoteDatasource.editSiswa(event.siswa);
            response.fold(
        (l) => emit(SiswaError(l)),
        (r) => emit(SiswaSuccess(r.data.siswa)),
      );
    });
    on<_DeleteSiswa>((event, emit) async {
      emit(const SiswaState.loading());
      final response = await masterRemoteDatasource.deleteSiswa(event.id);
            response.fold(
        (l) => emit(SiswaError(l)),
        (r) => emit(SiswaSuccess(r.data.siswa)),
      );
    });
  }
}
