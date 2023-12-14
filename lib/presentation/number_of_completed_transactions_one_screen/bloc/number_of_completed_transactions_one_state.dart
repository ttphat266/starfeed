// ignore_for_file: must_be_immutable

part of 'number_of_completed_transactions_one_bloc.dart';

/// Represents the state of NumberOfCompletedTransactionsOne in the application.
class NumberOfCompletedTransactionsOneState extends Equatable {
  NumberOfCompletedTransactionsOneState(
      {this.numberOfCompletedTransactionsOneModelObj});

  NumberOfCompletedTransactionsOneModel?
      numberOfCompletedTransactionsOneModelObj;

  @override
  List<Object?> get props => [
        numberOfCompletedTransactionsOneModelObj,
      ];
  NumberOfCompletedTransactionsOneState copyWith(
      {NumberOfCompletedTransactionsOneModel?
          numberOfCompletedTransactionsOneModelObj}) {
    return NumberOfCompletedTransactionsOneState(
      numberOfCompletedTransactionsOneModelObj:
          numberOfCompletedTransactionsOneModelObj ??
              this.numberOfCompletedTransactionsOneModelObj,
    );
  }
}
