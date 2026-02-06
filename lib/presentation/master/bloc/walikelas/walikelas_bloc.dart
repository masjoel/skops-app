import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'walikelas_event.dart';
part 'walikelas_state.dart';
part 'walikelas_bloc.freezed.dart';

class WalikelasBloc extends Bloc<WalikelasEvent, WalikelasState> {
  WalikelasBloc() : super(_Initial()) {
    on<WalikelasEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
