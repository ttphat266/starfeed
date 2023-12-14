import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_jobs_two_page/models/my_jobs_two_model.dart';
part 'my_jobs_two_event.dart';
part 'my_jobs_two_state.dart';

/// A bloc that manages the state of a MyJobsTwo according to the event that is dispatched to it.
class MyJobsTwoBloc extends Bloc<MyJobsTwoEvent, MyJobsTwoState> {
  MyJobsTwoBloc(MyJobsTwoState initialState) : super(initialState) {
    on<MyJobsTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyJobsTwoInitialEvent event,
    Emitter<MyJobsTwoState> emit,
  ) async {}
}
