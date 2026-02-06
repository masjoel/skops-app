import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasources/dash_remote_datasource.dart';
import '../../../../data/models/response/top10_skor_response_model.dart';

part 'top10_skor_event.dart';
part 'top10_skor_state.dart';
part 'top10_skor_bloc.freezed.dart';

class Top10SkorBloc extends Bloc<Top10SkorEvent, Top10SkorState> {
  final DashRemoteDatasource dashRemoteDatasource;

  Top10SkorBloc(this.dashRemoteDatasource) : super(Top10SkorState.initial()) {
    on<_Fetch>((event, emit) async {
      emit(const Top10SkorState.loading());
      final response = await dashRemoteDatasource.get10Skor();
      response.fold(
        (l) => emit(Top10SkorState.error(l)),
        (r) {emit(Top10SkorState.success(r.data));
        },
      );
    });
  }
}
