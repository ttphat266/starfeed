import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_jobs_seven_screen/models/my_jobs_seven_model.dart';
part 'my_jobs_seven_event.dart';
part 'my_jobs_seven_state.dart';

/// A bloc that manages the state of a MyJobsSeven according to the event that is dispatched to it.
class MyJobsSevenBloc extends Bloc<MyJobsSevenEvent, MyJobsSevenState> {
  MyJobsSevenBloc(MyJobsSevenState initialState) : super(initialState) {
    on<MyJobsSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyJobsSevenInitialEvent event,
    Emitter<MyJobsSevenState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
    ));
  }
}
