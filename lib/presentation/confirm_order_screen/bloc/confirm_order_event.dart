// ignore_for_file: must_be_immutable

part of 'confirm_order_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ConfirmOrder widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConfirmOrderEvent extends Equatable {}

/// Event that is dispatched when the ConfirmOrder widget is first created.
class ConfirmOrderInitialEvent extends ConfirmOrderEvent {
  @override
  List<Object?> get props => [];
}
