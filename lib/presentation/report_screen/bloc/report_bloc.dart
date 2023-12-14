import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/report_screen/models/report_model.dart';
part 'report_event.dart';
part 'report_state.dart';

/// A bloc that manages the state of a Report according to the event that is dispatched to it.
class ReportBloc extends Bloc<ReportEvent, ReportState> {
  ReportBloc(ReportState initialState) : super(initialState) {
    on<ReportInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReportInitialEvent event,
    Emitter<ReportState> emit,
  ) async {
    emit(state.copyWith(
      typehereController: TextEditingController(),
    ));
  }
}
