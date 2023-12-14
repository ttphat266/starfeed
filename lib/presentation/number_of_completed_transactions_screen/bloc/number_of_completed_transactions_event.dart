// ignore_for_file: must_be_immutable

part of 'number_of_completed_transactions_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NumberOfCompletedTransactions widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NumberOfCompletedTransactionsEvent extends Equatable {}

/// Event that is dispatched when the NumberOfCompletedTransactions widget is first created.
class NumberOfCompletedTransactionsInitialEvent
    extends NumberOfCompletedTransactionsEvent {
  @override
  List<Object?> get props => [];
}
