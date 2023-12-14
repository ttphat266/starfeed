// ignore_for_file: must_be_immutable

part of 'business_profile_user_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BusinessProfileUserOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BusinessProfileUserOneEvent extends Equatable {}

/// Event that is dispatched when the BusinessProfileUserOne widget is first created.
class BusinessProfileUserOneInitialEvent extends BusinessProfileUserOneEvent {
  @override
  List<Object?> get props => [];
}
