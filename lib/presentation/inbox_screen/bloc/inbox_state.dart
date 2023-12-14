// ignore_for_file: must_be_immutable

part of 'inbox_bloc.dart';

/// Represents the state of Inbox in the application.
class InboxState extends Equatable {
  InboxState({
    this.messageController,
    this.timeController,
    this.inboxModelObj,
  });

  TextEditingController? messageController;

  TextEditingController? timeController;

  InboxModel? inboxModelObj;

  @override
  List<Object?> get props => [
        messageController,
        timeController,
        inboxModelObj,
      ];
  InboxState copyWith({
    TextEditingController? messageController,
    TextEditingController? timeController,
    InboxModel? inboxModelObj,
  }) {
    return InboxState(
      messageController: messageController ?? this.messageController,
      timeController: timeController ?? this.timeController,
      inboxModelObj: inboxModelObj ?? this.inboxModelObj,
    );
  }
}
