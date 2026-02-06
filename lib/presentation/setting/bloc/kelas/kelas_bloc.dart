import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/master_remote_datasource.dart';
import 'package:webview_skops/presentation/setting/models/kelas_request_model.dart';
import 'package:webview_skops/presentation/setting/models/kelas_response_model.dart';

part 'kelas_event.dart';
part 'kelas_state.dart';
part 'kelas_bloc.freezed.dart';

class KelasBloc extends Bloc<KelasEvent, KelasState> {
  final MasterRemoteDatasource masterRemoteDatasource;

  KelasBloc(this.masterRemoteDatasource) : super(KelasInitial()) {
    on<_Fetch>((event, emit) async {
      emit(const KelasLoading());
      final response = await masterRemoteDatasource.getKelas();
      response.fold((l) => emit(KelasError(l)), (r) {
        emit(KelasSuccess(r.data.kelas));
      });
    });
    on<_AddKelas>((event, emit) async {
      emit(const KelasState.loading());
      final response = await masterRemoteDatasource.addKelas(event.kelas);
            response.fold(
        (l) => emit(KelasError(l)),
        (r) => emit(KelasSuccess(r.data.kelas)),
      );
    });
    on<_UpdateKelas>((event, emit) async {
      emit(const KelasState.loading());
      final response = await masterRemoteDatasource.editKelas(event.kelas);
            response.fold(
        (l) => emit(KelasError(l)),
        (r) => emit(KelasSuccess(r.data.kelas)),
      );
    });
    on<_DeleteKelas>((event, emit) async {
      emit(const KelasState.loading());
      final response = await masterRemoteDatasource.deleteKelas(event.id);
            response.fold(
        (l) => emit(KelasError(l)),
        (r) => emit(KelasSuccess(r.data.kelas)),
      );
    });
  }
}
