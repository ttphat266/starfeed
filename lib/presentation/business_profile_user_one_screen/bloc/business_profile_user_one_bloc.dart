import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist1_item_model.dart';
import 'package:phat_s_application1/presentation/business_profile_user_one_screen/models/business_profile_user_one_model.dart';
part 'business_profile_user_one_event.dart';
part 'business_profile_user_one_state.dart';

/// A bloc that manages the state of a BusinessProfileUserOne according to the event that is dispatched to it.
class BusinessProfileUserOneBloc
    extends Bloc<BusinessProfileUserOneEvent, BusinessProfileUserOneState> {
  BusinessProfileUserOneBloc(BusinessProfileUserOneState initialState)
      : super(initialState) {
    on<BusinessProfileUserOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BusinessProfileUserOneInitialEvent event,
    Emitter<BusinessProfileUserOneState> emit,
  ) async {
    emit(state.copyWith(
        businessProfileUserOneModelObj:
            state.businessProfileUserOneModelObj?.copyWith(
      userprofilelist1ItemList: fillUserprofilelist1ItemList(),
    )));
  }

  List<Userprofilelist1ItemModel> fillUserprofilelist1ItemList() {
    return [
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgEllipse81154x54,
          johnathonDoe: "Johnathon Doe",
          imageStoryPost: "1 Image, Story Post : 24 hr",
          price: " 200",
          jun: "20 jun 2023"),
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgEllipse816,
          johnathonDoe: "Johnathon Doe",
          imageStoryPost: "1 Video, Story Post : 3 days",
          price: " 200",
          jun: "20 jun 2023"),
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgEllipse81354x54,
          johnathonDoe: "Johnathon Doe",
          imageStoryPost: "1 Image, Story Post : 24 hr",
          price: " 200",
          jun: "20 jun 2023"),
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgEllipse81454x54,
          johnathonDoe: "Sujana Gomase",
          imageStoryPost: "1 Video, Story Post : 3 days",
          price: " 200",
          jun: "20 jun 2023")
    ];
  }
}
