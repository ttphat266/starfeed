// ignore_for_file: must_be_immutable

part of 'business_profile_user_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BusinessProfileUserTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BusinessProfileUserTwoEvent extends Equatable {}

/// Event that is dispatched when the BusinessProfileUserTwo widget is first created.
class BusinessProfileUserTwoInitialEvent extends BusinessProfileUserTwoEvent {
  @override
  List<Object?> get props => [];
}
