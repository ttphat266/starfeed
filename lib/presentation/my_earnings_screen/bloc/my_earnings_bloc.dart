import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_earnings_screen/models/my_earnings_model.dart';
part 'my_earnings_event.dart';
part 'my_earnings_state.dart';

/// A bloc that manages the state of a MyEarnings according to the event that is dispatched to it.
class MyEarningsBloc extends Bloc<MyEarningsEvent, MyEarningsState> {
  MyEarningsBloc(MyEarningsState initialState) : super(initialState) {
    on<MyEarningsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyEarningsInitialEvent event,
    Emitter<MyEarningsState> emit,
  ) async {}
}
