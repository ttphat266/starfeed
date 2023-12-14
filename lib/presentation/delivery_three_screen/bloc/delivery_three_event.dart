// ignore_for_file: must_be_immutable

part of 'delivery_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DeliveryThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DeliveryThreeEvent extends Equatable {}

/// Event that is dispatched when the DeliveryThree widget is first created.
class DeliveryThreeInitialEvent extends DeliveryThreeEvent {
  @override
  List<Object?> get props => [];
}
