// ignore_for_file: must_be_immutable

part of 'report_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReportOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReportOneEvent extends Equatable {}

/// Event that is dispatched when the ReportOne widget is first created.
class ReportOneInitialEvent extends ReportOneEvent {
  @override
  List<Object?> get props => [];
}
