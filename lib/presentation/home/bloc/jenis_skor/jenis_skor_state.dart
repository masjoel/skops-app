part of 'jenis_skor_bloc.dart';

@freezed
class JenisSkorState with _$JenisSkorState {
  const factory JenisSkorState.initial() = _Initial;
  const factory JenisSkorState.loading() = JenisSkorLoading;
  const factory JenisSkorState.success(List<JenisSkor> jenisSkor) = JenisSkorSuccess;
  const factory JenisSkorState.error(String message) = JenisSkorError;
}
