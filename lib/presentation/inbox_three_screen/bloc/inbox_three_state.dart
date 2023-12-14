// ignore_for_file: must_be_immutable

part of 'inbox_three_bloc.dart';

/// Represents the state of InboxThree in the application.
class InboxThreeState extends Equatable {
  InboxThreeState({
    this.messageController,
    this.morningMessageController,
    this.inboxThreeModelObj,
  });

  TextEditingController? messageController;

  TextEditingController? morningMessageController;

  InboxThreeModel? inboxThreeModelObj;

  @override
  List<Object?> get props => [
        messageController,
        morningMessageController,
        inboxThreeModelObj,
      ];
  InboxThreeState copyWith({
    TextEditingController? messageController,
    TextEditingController? morningMessageController,
    InboxThreeModel? inboxThreeModelObj,
  }) {
    return InboxThreeState(
      messageController: messageController ?? this.messageController,
      morningMessageController:
          morningMessageController ?? this.morningMessageController,
      inboxThreeModelObj: inboxThreeModelObj ?? this.inboxThreeModelObj,
    );
  }
}
