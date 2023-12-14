// ignore_for_file: must_be_immutable

part of 'delivery_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DeliveryTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DeliveryTwoEvent extends Equatable {}

/// Event that is dispatched when the DeliveryTwo widget is first created.
class DeliveryTwoInitialEvent extends DeliveryTwoEvent {
  @override
  List<Object?> get props => [];
}
