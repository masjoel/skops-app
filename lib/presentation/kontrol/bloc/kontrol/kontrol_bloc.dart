import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/kontrol_remote_ds.dart';
import 'package:webview_skops/presentation/kontrol/models/kontrol_request_model.dart';
import 'package:webview_skops/presentation/kontrol/models/kontrol_response_model.dart';

part 'kontrol_event.dart';
part 'kontrol_state.dart';
part 'kontrol_bloc.freezed.dart';

class KontrolBloc extends Bloc<KontrolEvent, KontrolState> {
  final KontrolRemoteDs kontrolRemoteDs;
  String _currentSearch = '';

  KontrolBloc(this.kontrolRemoteDs) : super(KontrolState.initial()) {
        on<_LoadKontrol>((event, emit) async {
      emit(const KontrolState.loading());
      final result = await kontrolRemoteDs.getKontrol(
        page: 1,
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );
      result.fold((l) => emit(KontrolError(l)), (r) {
        final data = r.data;
        emit(
          KontrolSuccess(
            kontrol: data.kontrol,
            currentPage: data.currentPage,
            lastPage: data.lastPage,
            hasReachedMax: data.currentPage >= data.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_LoadMore>((event, emit) async {
      final currentState = state;
      if (currentState is! KontrolSuccess) return;
      if (currentState.hasReachedMax || currentState.isLoadingMore) return;
      emit(currentState.copyWith(isLoadingMore: true));
      final nextPage = currentState.currentPage + 1;
      final result = await kontrolRemoteDs.getKontrol(
        page: nextPage,
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );
      result.fold((l) => emit(currentState.copyWith(isLoadingMore: false)), (
        r,
      ) {
        final data = r.data;
        emit(
          KontrolSuccess(
            kontrol: [...currentState.kontrol, ...data.kontrol],
            currentPage: data.currentPage,
            lastPage: data.lastPage,
            hasReachedMax: data.currentPage >= data.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_SearchKontrol>((event, emit) async {
      _currentSearch = event.query;
      emit(const KontrolState.loading());
      final result = await kontrolRemoteDs.getKontrol(
        page: 1,
        search: event.query.isEmpty ? null : event.query,
      );
      result.fold((error) => emit(KontrolState.error(error)), (response) {
        final data = response.data;
        emit(
          KontrolSuccess(
            kontrol: data.kontrol,
            currentPage: data.currentPage,
            lastPage: data.lastPage,
            hasReachedMax: data.currentPage >= data.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_Refresh>((event, emit) async {
      add(const KontrolEvent.loadKontrol());
    });

    on<_AddKontrol>((event, emit) async {
      emit(const KontrolState.loading());
      final response = await kontrolRemoteDs.addKontrol(event.kontrol);
      response.fold(
        (l) => emit(KontrolError(l)),
        (r) => emit(KontrolSukses(r.data.kontrol)),
      );
    });
    on<_UpdateKontrol>((event, emit) async {
      emit(const KontrolState.loading());
      final response = await kontrolRemoteDs.editKontrol(event.kontrol);
      response.fold(
        (l) => emit(KontrolError(l)),
        (r) => emit(KontrolSukses(r.data.kontrol)),
      );
    });
    on<_DeleteKontrol>((event, emit) async {
      emit(const KontrolState.loading());
      final response = await kontrolRemoteDs.deleteKontrol(event.id);
      response.fold(
        (l) => emit(KontrolError(l)),
        (r) => emit(KontrolSukses(r.data.kontrol)),
      );
    });
  }
}
