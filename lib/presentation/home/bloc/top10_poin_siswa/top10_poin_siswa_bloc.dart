import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/dash_remote_datasource.dart';
import '../../../../data/models/response/top10_siswa_response_model.dart';
part 'top10_poin_siswa_event.dart';
part 'top10_poin_siswa_state.dart';
part 'top10_poin_siswa_bloc.freezed.dart';

class Top10PoinSiswaBloc extends Bloc<Top10PoinSiswaEvent, Top10PoinSiswaState> {
  final DashRemoteDatasource dashRemoteDatasource;

  Top10PoinSiswaBloc(this.dashRemoteDatasource) : super(Top10PoinSiswaState.initial()) {
    on<_Fetch>((event, emit) async {
      emit(const Top10PoinSiswaState.loading());
      final response = await dashRemoteDatasource.getTop10Poin();
      response.fold(
        (l) => emit(Top10PoinSiswaState.error(l)),
        (r) {emit(Top10PoinSiswaState.success(r.data));
        },
      );
    });
  }
}
