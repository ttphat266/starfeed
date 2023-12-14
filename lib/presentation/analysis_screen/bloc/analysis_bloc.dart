import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/analysis_screen/models/analysis_model.dart';
part 'analysis_event.dart';
part 'analysis_state.dart';

/// A bloc that manages the state of a Analysis according to the event that is dispatched to it.
class AnalysisBloc extends Bloc<AnalysisEvent, AnalysisState> {
  AnalysisBloc(AnalysisState initialState) : super(initialState) {
    on<AnalysisInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AnalysisInitialEvent event,
    Emitter<AnalysisState> emit,
  ) async {}
}
