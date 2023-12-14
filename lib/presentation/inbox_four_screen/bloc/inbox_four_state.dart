// ignore_for_file: must_be_immutable

part of 'inbox_four_bloc.dart';

/// Represents the state of InboxFour in the application.
class InboxFourState extends Equatable {
  InboxFourState({
    this.messageController,
    this.morningGreetingController,
    this.inboxFourModelObj,
  });

  TextEditingController? messageController;

  TextEditingController? morningGreetingController;

  InboxFourModel? inboxFourModelObj;

  @override
  List<Object?> get props => [
        messageController,
        morningGreetingController,
        inboxFourModelObj,
      ];
  InboxFourState copyWith({
    TextEditingController? messageController,
    TextEditingController? morningGreetingController,
    InboxFourModel? inboxFourModelObj,
  }) {
    return InboxFourState(
      messageController: messageController ?? this.messageController,
      morningGreetingController:
          morningGreetingController ?? this.morningGreetingController,
      inboxFourModelObj: inboxFourModelObj ?? this.inboxFourModelObj,
    );
  }
}
