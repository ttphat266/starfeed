// ignore_for_file: must_be_immutable

part of 'number_of_completed_transactions_bloc.dart';

/// Represents the state of NumberOfCompletedTransactions in the application.
class NumberOfCompletedTransactionsState extends Equatable {
  NumberOfCompletedTransactionsState(
      {this.numberOfCompletedTransactionsModelObj});

  NumberOfCompletedTransactionsModel? numberOfCompletedTransactionsModelObj;

  @override
  List<Object?> get props => [
        numberOfCompletedTransactionsModelObj,
      ];
  NumberOfCompletedTransactionsState copyWith(
      {NumberOfCompletedTransactionsModel?
          numberOfCompletedTransactionsModelObj}) {
    return NumberOfCompletedTransactionsState(
      numberOfCompletedTransactionsModelObj:
          numberOfCompletedTransactionsModelObj ??
              this.numberOfCompletedTransactionsModelObj,
    );
  }
}
