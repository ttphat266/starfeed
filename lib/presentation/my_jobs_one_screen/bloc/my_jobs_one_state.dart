// ignore_for_file: must_be_immutable

part of 'my_jobs_one_bloc.dart';

/// Represents the state of MyJobsOne in the application.
class MyJobsOneState extends Equatable {
  MyJobsOneState({
    this.messageEditTextController,
    this.itsmorninginDhakavalueEditTextController,
    this.myJobsOneModelObj,
  });

  TextEditingController? messageEditTextController;

  TextEditingController? itsmorninginDhakavalueEditTextController;

  MyJobsOneModel? myJobsOneModelObj;

  @override
  List<Object?> get props => [
        messageEditTextController,
        itsmorninginDhakavalueEditTextController,
        myJobsOneModelObj,
      ];
  MyJobsOneState copyWith({
    TextEditingController? messageEditTextController,
    TextEditingController? itsmorninginDhakavalueEditTextController,
    MyJobsOneModel? myJobsOneModelObj,
  }) {
    return MyJobsOneState(
      messageEditTextController:
          messageEditTextController ?? this.messageEditTextController,
      itsmorninginDhakavalueEditTextController:
          itsmorninginDhakavalueEditTextController ??
              this.itsmorninginDhakavalueEditTextController,
      myJobsOneModelObj: myJobsOneModelObj ?? this.myJobsOneModelObj,
    );
  }
}
