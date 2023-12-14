// ignore_for_file: must_be_immutable

part of 'analysis_bloc.dart';

/// Represents the state of Analysis in the application.
class AnalysisState extends Equatable {
  AnalysisState({this.analysisModelObj});

  AnalysisModel? analysisModelObj;

  @override
  List<Object?> get props => [
        analysisModelObj,
      ];
  AnalysisState copyWith({AnalysisModel? analysisModelObj}) {
    return AnalysisState(
      analysisModelObj: analysisModelObj ?? this.analysisModelObj,
    );
  }
}
