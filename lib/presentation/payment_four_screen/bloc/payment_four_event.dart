// ignore_for_file: must_be_immutable

part of 'payment_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentFourEvent extends Equatable {}

/// Event that is dispatched when the PaymentFour widget is first created.
class PaymentFourInitialEvent extends PaymentFourEvent {
  @override
  List<Object?> get props => [];
}
