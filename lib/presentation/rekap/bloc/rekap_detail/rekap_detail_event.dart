part of 'rekap_detail_bloc.dart';


@freezed
class RekapDetailEvent with _$RekapDetailEvent {
  const factory RekapDetailEvent.started() = _Started;
  const factory RekapDetailEvent.fetch({String? search}) = _Fetch;
  const factory RekapDetailEvent.loadMore(int id) = _LoadMore;
  const factory RekapDetailEvent.deleteRekapDetail(int id) = _DeleteRekapDetail;
  const factory RekapDetailEvent.updateRekapDetail(RekapDetailSingle rekapdetail) = _UpdateRekapDetail;
  const factory RekapDetailEvent.searchRekapDetail(String search, int id, String? semester) = _SearchRekapDetail;
  const factory RekapDetailEvent.loadRekapDetail(int id) = _LoadRekapDetail;
  const factory RekapDetailEvent.refresh(int id) = _Refresh;
}
