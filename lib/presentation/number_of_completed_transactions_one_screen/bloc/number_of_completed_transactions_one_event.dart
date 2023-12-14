// ignore_for_file: must_be_immutable

part of 'number_of_completed_transactions_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NumberOfCompletedTransactionsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NumberOfCompletedTransactionsOneEvent extends Equatable {}

/// Event that is dispatched when the NumberOfCompletedTransactionsOne widget is first created.
class NumberOfCompletedTransactionsOneInitialEvent
    extends NumberOfCompletedTransactionsOneEvent {
  @override
  List<Object?> get props => [];
}
