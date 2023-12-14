import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/explore_business_two_screen/models/explore_business_two_model.dart';
part 'explore_business_two_event.dart';
part 'explore_business_two_state.dart';

/// A bloc that manages the state of a ExploreBusinessTwo according to the event that is dispatched to it.
class ExploreBusinessTwoBloc
    extends Bloc<ExploreBusinessTwoEvent, ExploreBusinessTwoState> {
  ExploreBusinessTwoBloc(ExploreBusinessTwoState initialState)
      : super(initialState) {
    on<ExploreBusinessTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExploreBusinessTwoInitialEvent event,
    Emitter<ExploreBusinessTwoState> emit,
  ) async {
    emit(state.copyWith(
      searchTwoController: TextEditingController(),
    ));
  }
}
