// ignore_for_file: must_be_immutable

part of 'report_bloc.dart';

/// Represents the state of Report in the application.
class ReportState extends Equatable {
  ReportState({
    this.typehereController,
    this.reportModelObj,
  });

  TextEditingController? typehereController;

  ReportModel? reportModelObj;

  @override
  List<Object?> get props => [
        typehereController,
        reportModelObj,
      ];
  ReportState copyWith({
    TextEditingController? typehereController,
    ReportModel? reportModelObj,
  }) {
    return ReportState(
      typehereController: typehereController ?? this.typehereController,
      reportModelObj: reportModelObj ?? this.reportModelObj,
    );
  }
}
