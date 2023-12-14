// ignore_for_file: must_be_immutable

part of 'my_information_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyInformationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyInformationOneEvent extends Equatable {}

/// Event that is dispatched when the MyInformationOne widget is first created.
class MyInformationOneInitialEvent extends MyInformationOneEvent {
  @override
  List<Object?> get props => [];
}
