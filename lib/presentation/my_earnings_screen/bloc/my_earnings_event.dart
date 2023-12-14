// ignore_for_file: must_be_immutable

part of 'my_earnings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyEarnings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyEarningsEvent extends Equatable {}

/// Event that is dispatched when the MyEarnings widget is first created.
class MyEarningsInitialEvent extends MyEarningsEvent {
  @override
  List<Object?> get props => [];
}
