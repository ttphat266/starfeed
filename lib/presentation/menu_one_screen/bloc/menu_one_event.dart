// ignore_for_file: must_be_immutable

part of 'menu_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MenuOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MenuOneEvent extends Equatable {}

/// Event that is dispatched when the MenuOne widget is first created.
class MenuOneInitialEvent extends MenuOneEvent {
  @override
  List<Object?> get props => [];
}
