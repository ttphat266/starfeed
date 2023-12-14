import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_jobs_six_screen/models/my_jobs_six_model.dart';
part 'my_jobs_six_event.dart';
part 'my_jobs_six_state.dart';

/// A bloc that manages the state of a MyJobsSix according to the event that is dispatched to it.
class MyJobsSixBloc extends Bloc<MyJobsSixEvent, MyJobsSixState> {
  MyJobsSixBloc(MyJobsSixState initialState) : super(initialState) {
    on<MyJobsSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyJobsSixInitialEvent event,
    Emitter<MyJobsSixState> emit,
  ) async {}
}
