import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/models/request/change_password_request_model.dart';
import '../../../../data/datasources/auth_remote_datasource.dart';
import '../../../../data/models/response/auth_response_model.dart';

part 'edit_password_event.dart';
part 'edit_password_state.dart';
part 'edit_password_bloc.freezed.dart';

class EditPasswordBloc extends Bloc<EditPasswordEvent, EditPasswordState> {
  EditPasswordBloc() : super(const Initial()) {
    on<_ChangePassword>((event, emit) async {
      emit(const Loading());
      final result = await AuthRemoteDatasource().changePassword(event.model);
      result.fold((error) => emit(Error(error)), (data) => emit(Loaded(data)));
    });
  }
}
