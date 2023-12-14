// ignore_for_file: must_be_immutable

part of 'delivery_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DeliveryOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DeliveryOneEvent extends Equatable {}

/// Event that is dispatched when the DeliveryOne widget is first created.
class DeliveryOneInitialEvent extends DeliveryOneEvent {
  @override
  List<Object?> get props => [];
}
