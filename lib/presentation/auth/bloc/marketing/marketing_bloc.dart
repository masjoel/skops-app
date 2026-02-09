// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:webview_skops/data/datasources/marketing_remote_datasource.dart';
// import 'package:webview_skops/data/models/response/marketing_response_model.dart';

// part 'marketing_bloc.freezed.dart';
// part 'marketing_event.dart';
// part 'marketing_state.dart';

// class MarketingBloc extends Bloc<MarketingEvent, MarketingState> {
//   final MarketingRemoteDatasource marketingRemoteDatasource;

//   MarketingBloc(this.marketingRemoteDatasource)
//     : super(const MarketingStateInitial()) {
//     on<_FetchMarketing>((event, emit) async {
//       emit(const MarketingStateLoading());
//       final response = await marketingRemoteDatasource.getRandomMarketing();
//       response.fold(
//         (l) => emit(MarketingStateError(l)),
//         (r) => emit(MarketingStateSuccess(r)),
//       );
//     });
//   }
// }
