// ignore_for_file: must_be_immutable

part of 'inbox_five_bloc.dart';

/// Represents the state of InboxFive in the application.
class InboxFiveState extends Equatable {
  InboxFiveState({
    this.messageEditTextController,
    this.timeEditTextController,
    this.inboxFiveModelObj,
  });

  TextEditingController? messageEditTextController;

  TextEditingController? timeEditTextController;

  InboxFiveModel? inboxFiveModelObj;

  @override
  List<Object?> get props => [
        messageEditTextController,
        timeEditTextController,
        inboxFiveModelObj,
      ];
  InboxFiveState copyWith({
    TextEditingController? messageEditTextController,
    TextEditingController? timeEditTextController,
    InboxFiveModel? inboxFiveModelObj,
  }) {
    return InboxFiveState(
      messageEditTextController:
          messageEditTextController ?? this.messageEditTextController,
      timeEditTextController:
          timeEditTextController ?? this.timeEditTextController,
      inboxFiveModelObj: inboxFiveModelObj ?? this.inboxFiveModelObj,
    );
  }
}
