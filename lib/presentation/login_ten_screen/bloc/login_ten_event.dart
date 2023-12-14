// ignore_for_file: must_be_immutable

part of 'login_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginTenEvent extends Equatable {}

/// Event that is dispatched when the LoginTen widget is first created.
class LoginTenInitialEvent extends LoginTenEvent {
  @override
  List<Object?> get props => [];
}
