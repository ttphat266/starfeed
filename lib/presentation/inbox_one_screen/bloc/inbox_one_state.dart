// ignore_for_file: must_be_immutable

part of 'inbox_one_bloc.dart';

/// Represents the state of InboxOne in the application.
class InboxOneState extends Equatable {
  InboxOneState({this.inboxOneModelObj});

  InboxOneModel? inboxOneModelObj;

  @override
  List<Object?> get props => [
        inboxOneModelObj,
      ];
  InboxOneState copyWith({InboxOneModel? inboxOneModelObj}) {
    return InboxOneState(
      inboxOneModelObj: inboxOneModelObj ?? this.inboxOneModelObj,
    );
  }
}
