// ignore_for_file: must_be_immutable

part of 'checkout_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckoutDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckoutDetailsEvent extends Equatable {}

/// Event that is dispatched when the CheckoutDetails widget is first created.
class CheckoutDetailsInitialEvent extends CheckoutDetailsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends CheckoutDetailsEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
