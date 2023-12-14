import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/explore_business_one_screen/models/explore_business_one_model.dart';
part 'explore_business_one_event.dart';
part 'explore_business_one_state.dart';

/// A bloc that manages the state of a ExploreBusinessOne according to the event that is dispatched to it.
class ExploreBusinessOneBloc
    extends Bloc<ExploreBusinessOneEvent, ExploreBusinessOneState> {
  ExploreBusinessOneBloc(ExploreBusinessOneState initialState)
      : super(initialState) {
    on<ExploreBusinessOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExploreBusinessOneInitialEvent event,
    Emitter<ExploreBusinessOneState> emit,
  ) async {
    emit(state.copyWith(
      searchTwoController: TextEditingController(),
    ));
  }
}
