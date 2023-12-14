// ignore_for_file: must_be_immutable

part of 'analysis_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Analysis widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AnalysisEvent extends Equatable {}

/// Event that is dispatched when the Analysis widget is first created.
class AnalysisInitialEvent extends AnalysisEvent {
  @override
  List<Object?> get props => [];
}
