import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/explorebusiness_item_model.dart';
import 'package:phat_s_application1/presentation/explore_business_screen/models/explore_business_model.dart';
part 'explore_business_event.dart';
part 'explore_business_state.dart';

/// A bloc that manages the state of a ExploreBusiness according to the event that is dispatched to it.
class ExploreBusinessBloc
    extends Bloc<ExploreBusinessEvent, ExploreBusinessState> {
  ExploreBusinessBloc(ExploreBusinessState initialState) : super(initialState) {
    on<ExploreBusinessInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<ExploreBusinessState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  List<ExplorebusinessItemModel> fillExplorebusinessItemList() {
    return [
      ExplorebusinessItemModel(frame: "Vagan influencers"),
      ExplorebusinessItemModel(frame: "Top Influencers"),
      ExplorebusinessItemModel(frame: "Popular"),
      ExplorebusinessItemModel(frame: "New Comers")
    ];
  }

  _onInitialize(
    ExploreBusinessInitialEvent event,
    Emitter<ExploreBusinessState> emit,
  ) async {
    emit(state.copyWith(
      searchTwoController: TextEditingController(),
      editTextController: TextEditingController(),
      isSelectedSwitch: false,
    ));
    emit(state.copyWith(
        exploreBusinessModelObj: state.exploreBusinessModelObj?.copyWith(
      explorebusinessItemList: fillExplorebusinessItemList(),
    )));
  }
}
