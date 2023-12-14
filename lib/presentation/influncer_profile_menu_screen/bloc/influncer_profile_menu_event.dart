// ignore_for_file: must_be_immutable

part of 'influncer_profile_menu_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InfluncerProfileMenu widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InfluncerProfileMenuEvent extends Equatable {}

/// Event that is dispatched when the InfluncerProfileMenu widget is first created.
class InfluncerProfileMenuInitialEvent extends InfluncerProfileMenuEvent {
  @override
  List<Object?> get props => [];
}
