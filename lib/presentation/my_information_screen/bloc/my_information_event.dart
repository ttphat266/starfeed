// ignore_for_file: must_be_immutable

part of 'my_information_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyInformation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyInformationEvent extends Equatable {}

/// Event that is dispatched when the MyInformation widget is first created.
class MyInformationInitialEvent extends MyInformationEvent {
  @override
  List<Object?> get props => [];
}
