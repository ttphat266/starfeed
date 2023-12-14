// ignore_for_file: must_be_immutable

part of 'business_profile_user_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BusinessProfileUser widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BusinessProfileUserEvent extends Equatable {}

/// Event that is dispatched when the BusinessProfileUser widget is first created.
class BusinessProfileUserInitialEvent extends BusinessProfileUserEvent {
  @override
  List<Object?> get props => [];
}
