part of 'top10_poin_siswa_bloc.dart';

@freezed
class Top10PoinSiswaState with _$Top10PoinSiswaState {
  const factory Top10PoinSiswaState.initial() = _Initial;
  const factory Top10PoinSiswaState.loading() = Top10PoinLoading;
  const factory Top10PoinSiswaState.success(List<Top10Siswa> top10) = Top10PoinSuccess;
  const factory Top10PoinSiswaState.error(String message) = Top10PoinError;
}
