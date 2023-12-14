import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/let_s_start_screen/models/let_s_start_model.dart';
part 'let_s_start_event.dart';
part 'let_s_start_state.dart';

/// A bloc that manages the state of a LetSStart according to the event that is dispatched to it.
class LetSStartBloc extends Bloc<LetSStartEvent, LetSStartState> {
  LetSStartBloc(LetSStartState initialState) : super(initialState) {
    on<LetSStartInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LetSStartInitialEvent event,
    Emitter<LetSStartState> emit,
  ) async {}
}
