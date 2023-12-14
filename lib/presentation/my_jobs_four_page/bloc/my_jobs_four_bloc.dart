import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_jobs_four_page/models/my_jobs_four_model.dart';
part 'my_jobs_four_event.dart';
part 'my_jobs_four_state.dart';

/// A bloc that manages the state of a MyJobsFour according to the event that is dispatched to it.
class MyJobsFourBloc extends Bloc<MyJobsFourEvent, MyJobsFourState> {
  MyJobsFourBloc(MyJobsFourState initialState) : super(initialState) {
    on<MyJobsFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyJobsFourInitialEvent event,
    Emitter<MyJobsFourState> emit,
  ) async {}
}
