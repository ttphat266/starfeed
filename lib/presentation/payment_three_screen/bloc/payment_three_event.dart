// ignore_for_file: must_be_immutable

part of 'payment_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentThreeEvent extends Equatable {}

/// Event that is dispatched when the PaymentThree widget is first created.
class PaymentThreeInitialEvent extends PaymentThreeEvent {
  @override
  List<Object?> get props => [];
}
