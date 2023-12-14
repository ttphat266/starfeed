// ignore_for_file: must_be_immutable

part of 'offer_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OfferOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OfferOneEvent extends Equatable {}

/// Event that is dispatched when the OfferOne widget is first created.
class OfferOneInitialEvent extends OfferOneEvent {
  @override
  List<Object?> get props => [];
}
