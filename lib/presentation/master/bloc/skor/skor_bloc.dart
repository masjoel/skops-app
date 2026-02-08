import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/master_remote_datasource.dart';
import 'package:webview_skops/presentation/master/models/skor_request_model.dart';
import 'package:webview_skops/presentation/master/models/skor_master_response_model.dart';

part 'skor_event.dart';
part 'skor_state.dart';
part 'skor_bloc.freezed.dart';

class SkorBloc extends Bloc<SkorEvent, SkorState> {
  final MasterRemoteDatasource masterRemoteDatasource;

  SkorBloc(this.masterRemoteDatasource) : super(SkorInitial()) {
    on<_Fetch>((event, emit) async {
      emit(const SkorLoading());
      final response = await masterRemoteDatasource.getSkor();
      response.fold((l) => emit(SkorError(l)), (r) {
        emit(SkorSuccess(r.data.skor));
      });
    });
    on<_AddSkor>((event, emit) async {
      emit(const SkorState.loading());
      final response = await masterRemoteDatasource.addSkor(event.skor);
            response.fold(
        (l) => emit(SkorError(l)),
        (r) => emit(SkorSuccess(r.data.skor)),
      );
    });
    on<_UpdateSkor>((event, emit) async {
      emit(const SkorState.loading());
      final response = await masterRemoteDatasource.editSkor(event.skor);
            response.fold(
        (l) => emit(SkorError(l)),
        (r) => emit(SkorSuccess(r.data.skor)),
      );
    });
    on<_DeleteSkor>((event, emit) async {
      emit(const SkorState.loading());
      final response = await masterRemoteDatasource.deleteSkor(event.id);
            response.fold(
        (l) => emit(SkorError(l)),
        (r) => emit(SkorSuccess(r.data.skor)),
      );
    });
    on<_SearchSkor>((event, emit) async {
      emit(const SkorState.loading());
      final response = await masterRemoteDatasource.searchSkor(event.query);
            response.fold(
        (l) => emit(SkorError(l)),
        (r) => emit(SkorSuccess(r.data.skor)),
      );
    });
  }
}
