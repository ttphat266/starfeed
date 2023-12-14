import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_jobs_one_screen/models/my_jobs_one_model.dart';
part 'my_jobs_one_event.dart';
part 'my_jobs_one_state.dart';

/// A bloc that manages the state of a MyJobsOne according to the event that is dispatched to it.
class MyJobsOneBloc extends Bloc<MyJobsOneEvent, MyJobsOneState> {
  MyJobsOneBloc(MyJobsOneState initialState) : super(initialState) {
    on<MyJobsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyJobsOneInitialEvent event,
    Emitter<MyJobsOneState> emit,
  ) async {
    emit(state.copyWith(
      messageEditTextController: TextEditingController(),
      itsmorninginDhakavalueEditTextController: TextEditingController(),
    ));
  }
}
