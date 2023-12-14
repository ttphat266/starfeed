// ignore_for_file: must_be_immutable

part of 'inbox_two_bloc.dart';

/// Represents the state of InboxTwo in the application.
class InboxTwoState extends Equatable {
  InboxTwoState({this.inboxTwoModelObj});

  InboxTwoModel? inboxTwoModelObj;

  @override
  List<Object?> get props => [
        inboxTwoModelObj,
      ];
  InboxTwoState copyWith({InboxTwoModel? inboxTwoModelObj}) {
    return InboxTwoState(
      inboxTwoModelObj: inboxTwoModelObj ?? this.inboxTwoModelObj,
    );
  }
}
