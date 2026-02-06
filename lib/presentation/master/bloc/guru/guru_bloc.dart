import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guru_event.dart';
part 'guru_state.dart';
part 'guru_bloc.freezed.dart';

class GuruBloc extends Bloc<GuruEvent, GuruState> {
  GuruBloc() : super(_Initial()) {
    on<GuruEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
