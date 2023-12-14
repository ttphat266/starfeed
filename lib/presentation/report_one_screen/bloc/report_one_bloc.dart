import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/report_one_screen/models/report_one_model.dart';
part 'report_one_event.dart';
part 'report_one_state.dart';

/// A bloc that manages the state of a ReportOne according to the event that is dispatched to it.
class ReportOneBloc extends Bloc<ReportOneEvent, ReportOneState> {
  ReportOneBloc(ReportOneState initialState) : super(initialState) {
    on<ReportOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReportOneInitialEvent event,
    Emitter<ReportOneState> emit,
  ) async {
    emit(state.copyWith(
      privateMessageiconController: TextEditingController(),
    ));
  }
}
