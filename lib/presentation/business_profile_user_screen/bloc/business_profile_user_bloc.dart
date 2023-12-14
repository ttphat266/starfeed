import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilesection_item_model.dart';
import 'package:phat_s_application1/presentation/business_profile_user_screen/models/business_profile_user_model.dart';
part 'business_profile_user_event.dart';
part 'business_profile_user_state.dart';

/// A bloc that manages the state of a BusinessProfileUser according to the event that is dispatched to it.
class BusinessProfileUserBloc
    extends Bloc<BusinessProfileUserEvent, BusinessProfileUserState> {
  BusinessProfileUserBloc(BusinessProfileUserState initialState)
      : super(initialState) {
    on<BusinessProfileUserInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BusinessProfileUserInitialEvent event,
    Emitter<BusinessProfileUserState> emit,
  ) async {
    emit(state.copyWith(
        businessProfileUserModelObj:
            state.businessProfileUserModelObj?.copyWith(
      userprofilesectionItemList: fillUserprofilesectionItemList(),
    )));
  }

  List<UserprofilesectionItemModel> fillUserprofilesectionItemList() {
    return [
      UserprofilesectionItemModel(
          userImage: ImageConstant.imgEllipse81154x54,
          userName: "Johnathon Doe",
          postType: "1 Image, Story Post : 24 hr",
          postPrice: " 200",
          postDate: "20 jun 2023"),
      UserprofilesectionItemModel(
          userImage: ImageConstant.imgEllipse816,
          userName: "Johnathon Doe",
          postType: "1 Video, Story Post : 3 days",
          postPrice: " 200",
          postDate: "20 jun 2023"),
      UserprofilesectionItemModel(
          userImage: ImageConstant.imgEllipse81354x54,
          userName: "Johnathon Doe",
          postType: "1 Image, Story Post : 24 hr",
          postPrice: " 200",
          postDate: "20 jun 2023"),
      UserprofilesectionItemModel(
          userImage: ImageConstant.imgEllipse81454x54,
          userName: "Sujana Gomase",
          postType: "1 Video, Story Post : 3 days",
          postPrice: " 200",
          postDate: "20 jun 2023")
    ];
  }
}
