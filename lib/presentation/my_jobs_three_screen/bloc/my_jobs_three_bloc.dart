import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_jobs_three_screen/models/my_jobs_three_model.dart';
part 'my_jobs_three_event.dart';
part 'my_jobs_three_state.dart';

/// A bloc that manages the state of a MyJobsThree according to the event that is dispatched to it.
class MyJobsThreeBloc extends Bloc<MyJobsThreeEvent, MyJobsThreeState> {
  MyJobsThreeBloc(MyJobsThreeState initialState) : super(initialState) {
    on<MyJobsThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyJobsThreeInitialEvent event,
    Emitter<MyJobsThreeState> emit,
  ) async {}
}
