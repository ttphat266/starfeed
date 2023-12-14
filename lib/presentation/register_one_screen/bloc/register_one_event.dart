// ignore_for_file: must_be_immutable

part of 'register_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegisterOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegisterOneEvent extends Equatable {}

/// Event that is dispatched when the RegisterOne widget is first created.
class RegisterOneInitialEvent extends RegisterOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends RegisterOneEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends RegisterOneEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends RegisterOneEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
