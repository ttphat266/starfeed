import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/number_of_completed_transactions_one_screen/models/number_of_completed_transactions_one_model.dart';
part 'number_of_completed_transactions_one_event.dart';
part 'number_of_completed_transactions_one_state.dart';

/// A bloc that manages the state of a NumberOfCompletedTransactionsOne according to the event that is dispatched to it.
class NumberOfCompletedTransactionsOneBloc extends Bloc<
    NumberOfCompletedTransactionsOneEvent,
    NumberOfCompletedTransactionsOneState> {
  NumberOfCompletedTransactionsOneBloc(
      NumberOfCompletedTransactionsOneState initialState)
      : super(initialState) {
    on<NumberOfCompletedTransactionsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NumberOfCompletedTransactionsOneInitialEvent event,
    Emitter<NumberOfCompletedTransactionsOneState> emit,
  ) async {}
}
