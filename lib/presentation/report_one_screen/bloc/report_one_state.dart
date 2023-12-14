// ignore_for_file: must_be_immutable

part of 'report_one_bloc.dart';

/// Represents the state of ReportOne in the application.
class ReportOneState extends Equatable {
  ReportOneState({
    this.privateMessageiconController,
    this.reportOneModelObj,
  });

  TextEditingController? privateMessageiconController;

  ReportOneModel? reportOneModelObj;

  @override
  List<Object?> get props => [
        privateMessageiconController,
        reportOneModelObj,
      ];
  ReportOneState copyWith({
    TextEditingController? privateMessageiconController,
    ReportOneModel? reportOneModelObj,
  }) {
    return ReportOneState(
      privateMessageiconController:
          privateMessageiconController ?? this.privateMessageiconController,
      reportOneModelObj: reportOneModelObj ?? this.reportOneModelObj,
    );
  }
}
