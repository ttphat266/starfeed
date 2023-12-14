import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/clienttestimonials_item_model.dart';
import 'package:phat_s_application1/presentation/explore_influencer_screen/models/explore_influencer_model.dart';
part 'explore_influencer_event.dart';
part 'explore_influencer_state.dart';

/// A bloc that manages the state of a ExploreInfluencer according to the event that is dispatched to it.
class ExploreInfluencerBloc
    extends Bloc<ExploreInfluencerEvent, ExploreInfluencerState> {
  ExploreInfluencerBloc(ExploreInfluencerState initialState)
      : super(initialState) {
    on<ExploreInfluencerInitialEvent>(_onInitialize);
  }

  List<ClienttestimonialsItemModel> fillClienttestimonialsItemList() {
    return [
      ClienttestimonialsItemModel(
          userImage: ImageConstant.imgEllipse815115x115,
          hiconLinear: ImageConstant.imgHiconLinearPrimary23x23,
          userName: "Tommy Rodberg",
          userImage1: ImageConstant.imgStar125,
          rating: "5.0",
          ordersDone: "20 Orders Done"),
      ClienttestimonialsItemModel(
          userImage: ImageConstant.imgEllipse815,
          hiconLinear: ImageConstant.imgHiconLinearPrimary,
          userName: "Tommy Rodberg",
          userImage1: ImageConstant.imgStar126,
          rating: "5.0",
          ordersDone: "500 Orders Done"),
      ClienttestimonialsItemModel(
          userImage: ImageConstant.imgEllipse815115x115,
          hiconLinear: ImageConstant.imgHiconLinearPrimary23x23,
          userName: "Tommy Rodberg",
          userImage1: ImageConstant.imgStar127,
          rating: "5.0",
          ordersDone: "20 Orders Done"),
      ClienttestimonialsItemModel(
          userImage: ImageConstant.imgEllipse815,
          hiconLinear: ImageConstant.imgHiconLinearPrimary,
          userName: "Tommy Rodberg",
          userImage1: ImageConstant.imgStar128,
          rating: "5.0",
          ordersDone: "500 Orders Done")
    ];
  }

  _onInitialize(
    ExploreInfluencerInitialEvent event,
    Emitter<ExploreInfluencerState> emit,
  ) async {
    emit(state.copyWith(
      searchTwoController: TextEditingController(),
    ));
    emit(state.copyWith(
        exploreInfluencerModelObj: state.exploreInfluencerModelObj?.copyWith(
      clienttestimonialsItemList: fillClienttestimonialsItemList(),
    )));
  }
}
