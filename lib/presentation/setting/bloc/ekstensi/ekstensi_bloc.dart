import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/master_remote_datasource.dart';
import 'package:webview_skops/presentation/setting/models/ekstensi_request_model.dart';
import 'package:webview_skops/presentation/setting/models/ekstensi_response_model.dart';

part 'ekstensi_event.dart';
part 'ekstensi_state.dart';
part 'ekstensi_bloc.freezed.dart';

class EkstensiBloc extends Bloc<EkstensiEvent, EkstensiState> {
  final MasterRemoteDatasource masterRemoteDatasource;

  EkstensiBloc(this.masterRemoteDatasource) : super(EkstensiInitial()) {
    on<_Fetch>((event, emit) async {
      emit(const EkstensiState.loading());
      final response = await masterRemoteDatasource.getEkstensi();
      response.fold((l) => emit(EkstensiState.error(l)), (r) {
        emit(EkstensiState.success(r.data.kelasExt));
      });
    });
    on<_AddEkstensi>((event, emit) async {
      emit(const EkstensiLoading());
      final response = await masterRemoteDatasource.addExt(event.ekstensi);
      response.fold(
        (l) => emit(EkstensiError(l)),
        (r) => emit(EkstensiSuccess(r.data.kelasExt)),
      );
    });
    on<_UpdateEkstensi>((event, emit) async {
      emit(const EkstensiLoading());
      final response = await masterRemoteDatasource.editExt(event.ekstensi);
      response.fold(
        (l) => emit(EkstensiError(l)),
        (r) => emit(EkstensiSuccess(r.data.kelasExt)),
      );
    });
    on<_DeleteEkstensi>((event, emit) async {
      emit(const EkstensiLoading());
      final response = await masterRemoteDatasource.deleteExt(event.id);
      response.fold(
        (l) => emit(EkstensiError(l)),
        (r) => emit(EkstensiSuccess(r.data.kelasExt)),
      );
    });
  }
}
