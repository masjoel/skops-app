import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/master_remote_datasource.dart';
import 'package:webview_skops/presentation/profil/models/profil_response_model.dart';

part 'profil_event.dart';
part 'profil_state.dart';
part 'profil_bloc.freezed.dart';

class ProfilBloc extends Bloc<ProfilEvent, ProfilState> {
  final MasterRemoteDatasource masterRemoteDatasource;

  ProfilBloc(this.masterRemoteDatasource) : super(ProfilInitial()) {
    on<_Fetch>((event, emit) async {
      emit(const ProfilState.loading());
      final response = await masterRemoteDatasource.getProfil();
      response.fold(
        (l) => emit(ProfilError(l)),
        (r) => emit(ProfilSuccess(r.profil)),
      );
    });
    on<_UpdateProfil>((event, emit) async {
      emit(const ProfilLoading());
      final response = await masterRemoteDatasource.editProfil(event.profil);
      response.fold(
        (l) => emit(ProfilError(l)),
        (r) => emit(ProfilSuccess(r.profil)),
      );
    });
  }
}
