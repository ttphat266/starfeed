// ignore_for_file: must_be_immutable

part of 'sign_up_screen_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpScreenOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpScreenOneEvent extends Equatable {}

/// Event that is dispatched when the SignUpScreenOne widget is first created.
class SignUpScreenOneInitialEvent extends SignUpScreenOneEvent {
  @override
  List<Object?> get props => [];
}
