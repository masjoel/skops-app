import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/master_remote_datasource.dart';
import 'package:webview_skops/presentation/profil/models/profil_user_response_model.dart';

part 'profil_user_event.dart';
part 'profil_user_state.dart';
part 'profil_user_bloc.freezed.dart';

class ProfilUserBloc extends Bloc<ProfilUserEvent, ProfilUserState> {
  final MasterRemoteDatasource masterRemoteDatasource;

  ProfilUserBloc(this.masterRemoteDatasource) : super(ProfilUserInitial()) {
    on<_Fetch>((event, emit) async {
      emit(const ProfilUserState.loading());
      final response = await masterRemoteDatasource.getProfilUser();
      response.fold(
        (l) => emit(ProfilUserError(l)),
        (r) => emit(ProfilUserSuccess(r.profiluser)),
      );
    });
    on<_UpdateProfilUser>((event, emit) async {
      emit(const ProfilUserLoading());
      final response = await masterRemoteDatasource.editProfilUser(
        event.profiluser,
      );
      response.fold(
        (l) => emit(ProfilUserError(l)),
        (r) => emit(ProfilUserSuccess(r.profiluser)),
      );
    });
  }
}
