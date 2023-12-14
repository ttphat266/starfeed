// ignore_for_file: must_be_immutable

part of 'my_jobs_five_bloc.dart';

/// Represents the state of MyJobsFive in the application.
class MyJobsFiveState extends Equatable {
  MyJobsFiveState({
    this.messageEditTextController,
    this.messageTimezoneEditTextController,
    this.myJobsFiveModelObj,
  });

  TextEditingController? messageEditTextController;

  TextEditingController? messageTimezoneEditTextController;

  MyJobsFiveModel? myJobsFiveModelObj;

  @override
  List<Object?> get props => [
        messageEditTextController,
        messageTimezoneEditTextController,
        myJobsFiveModelObj,
      ];
  MyJobsFiveState copyWith({
    TextEditingController? messageEditTextController,
    TextEditingController? messageTimezoneEditTextController,
    MyJobsFiveModel? myJobsFiveModelObj,
  }) {
    return MyJobsFiveState(
      messageEditTextController:
          messageEditTextController ?? this.messageEditTextController,
      messageTimezoneEditTextController: messageTimezoneEditTextController ??
          this.messageTimezoneEditTextController,
      myJobsFiveModelObj: myJobsFiveModelObj ?? this.myJobsFiveModelObj,
    );
  }
}
