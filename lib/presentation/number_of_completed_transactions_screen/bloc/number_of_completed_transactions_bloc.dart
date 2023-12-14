import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/thirtysix_item_model.dart';
import 'package:phat_s_application1/presentation/number_of_completed_transactions_screen/models/number_of_completed_transactions_model.dart';
part 'number_of_completed_transactions_event.dart';
part 'number_of_completed_transactions_state.dart';

/// A bloc that manages the state of a NumberOfCompletedTransactions according to the event that is dispatched to it.
class NumberOfCompletedTransactionsBloc extends Bloc<
    NumberOfCompletedTransactionsEvent, NumberOfCompletedTransactionsState> {
  NumberOfCompletedTransactionsBloc(
      NumberOfCompletedTransactionsState initialState)
      : super(initialState) {
    on<NumberOfCompletedTransactionsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NumberOfCompletedTransactionsInitialEvent event,
    Emitter<NumberOfCompletedTransactionsState> emit,
  ) async {
    emit(state.copyWith(
        numberOfCompletedTransactionsModelObj:
            state.numberOfCompletedTransactionsModelObj?.copyWith(
      thirtysixItemList: fillThirtysixItemList(),
    )));
  }

  List<ThirtysixItemModel> fillThirtysixItemList() {
    return [
      ThirtysixItemModel(
          cameraImage: ImageConstant.imgInstagram, camera: "Camera"),
      ThirtysixItemModel(
          cameraImage: ImageConstant.imgRectangle17, camera: "10:03")
    ];
  }
}
