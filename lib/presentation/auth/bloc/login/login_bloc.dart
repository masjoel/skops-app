import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:webview_skops/data/datasources/auth_remote_datasource.dart';

import '../../../../data/models/request/login_request_model.dart';
import '../../../../data/models/response/auth_response_model.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasource authRemoteDatasource;
  LoginBloc(this.authRemoteDatasource) : super(const LoginInitial()) {
    on<_Login>((event, emit) async {
      emit(const LoginLoading());
      final result = await authRemoteDatasource.login(event.model);
      result.fold((l) => emit(LoginError(l)), (r) => emit(LoginSuccess(r)));
    });
  }
}
