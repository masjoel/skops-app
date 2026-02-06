import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/master_remote_datasource.dart';
import 'package:webview_skops/presentation/setting/models/jurusan_request_model.dart';
import 'package:webview_skops/presentation/setting/models/jurusan_response_model.dart';

part 'jurusan_event.dart';
part 'jurusan_state.dart';
part 'jurusan_bloc.freezed.dart';

class JurusanBloc extends Bloc<JurusanEvent, JurusanState> {
  final MasterRemoteDatasource masterRemoteDatasource;

  JurusanBloc(this.masterRemoteDatasource) : super(JurusanState.initial()) {
    on<_Fetch>((event, emit) async {
      emit(const JurusanState.loading());
      final response = await masterRemoteDatasource.getJurusan();
      response.fold((l) => emit(JurusanState.error(l)), (r) {
        emit(JurusanState.success(r.data.jurusan));
      });
    });
    on<_AddJurusan>((event, emit) async {
      emit(const JurusanState.loading());
      final response = await masterRemoteDatasource.addJurusan(event.jurusan);
      response.fold(
        (l) => emit(JurusanError(l)),
        (r) => emit(JurusanSuccess(r.data.jurusan)),
      );
    });
    on<_UpdateJurusan>((event, emit) async {
      emit(const JurusanState.loading());
      final response = await masterRemoteDatasource.editJurusan(event.jurusan);
      response.fold(
        (l) => emit(JurusanError(l)),
        (r) => emit(JurusanSuccess(r.data.jurusan)),
      );
    });
    on<_DeleteJurusan>((event, emit) async {
      emit(const JurusanState.loading());
      final response = await masterRemoteDatasource.deleteJurusan(event.id);
      response.fold(
        (l) => emit(JurusanError(l)),
        (r) => emit(JurusanSuccess(r.data.jurusan)),
      );
    });
  }
}
