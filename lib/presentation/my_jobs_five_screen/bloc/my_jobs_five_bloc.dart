import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_jobs_five_screen/models/my_jobs_five_model.dart';
part 'my_jobs_five_event.dart';
part 'my_jobs_five_state.dart';

/// A bloc that manages the state of a MyJobsFive according to the event that is dispatched to it.
class MyJobsFiveBloc extends Bloc<MyJobsFiveEvent, MyJobsFiveState> {
  MyJobsFiveBloc(MyJobsFiveState initialState) : super(initialState) {
    on<MyJobsFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyJobsFiveInitialEvent event,
    Emitter<MyJobsFiveState> emit,
  ) async {
    emit(state.copyWith(
      messageEditTextController: TextEditingController(),
      messageTimezoneEditTextController: TextEditingController(),
    ));
  }
}
