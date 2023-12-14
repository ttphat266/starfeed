import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_jobs_tab_container_screen/models/my_jobs_tab_container_model.dart';
part 'my_jobs_tab_container_event.dart';
part 'my_jobs_tab_container_state.dart';

/// A bloc that manages the state of a MyJobsTabContainer according to the event that is dispatched to it.
class MyJobsTabContainerBloc
    extends Bloc<MyJobsTabContainerEvent, MyJobsTabContainerState> {
  MyJobsTabContainerBloc(MyJobsTabContainerState initialState)
      : super(initialState) {
    on<MyJobsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyJobsTabContainerInitialEvent event,
    Emitter<MyJobsTabContainerState> emit,
  ) async {}
}
