import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/dash_remote_datasource.dart';
import 'package:webview_skops/data/models/response/skor_response_model.dart';

part 'jenis_skor_event.dart';
part 'jenis_skor_state.dart';
part 'jenis_skor_bloc.freezed.dart';

class JenisSkorBloc extends Bloc<JenisSkorEvent, JenisSkorState> {
  final DashRemoteDatasource dashRemoteDatasource;

  JenisSkorBloc(this.dashRemoteDatasource) : super(JenisSkorState.initial()) {
    on<_Fetch>((event, emit) async {
      emit(const JenisSkorState.loading());
      final response = await dashRemoteDatasource.getJenisSkor();
      response.fold(
        (l) => emit(JenisSkorState.error(l)),
        (r) {emit(JenisSkorState.success(r.data));
        },
      );
    });
  }
}
