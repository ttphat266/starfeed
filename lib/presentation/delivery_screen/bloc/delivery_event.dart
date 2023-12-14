// ignore_for_file: must_be_immutable

part of 'delivery_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Delivery widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DeliveryEvent extends Equatable {}

/// Event that is dispatched when the Delivery widget is first created.
class DeliveryInitialEvent extends DeliveryEvent {
  @override
  List<Object?> get props => [];
}
