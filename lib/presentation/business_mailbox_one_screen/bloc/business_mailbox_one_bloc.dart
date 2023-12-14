import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:phat_s_application1/presentation/business_mailbox_one_screen/models/business_mailbox_one_model.dart';
part 'business_mailbox_one_event.dart';
part 'business_mailbox_one_state.dart';

/// A bloc that manages the state of a BusinessMailboxOne according to the event that is dispatched to it.
class BusinessMailboxOneBloc
    extends Bloc<BusinessMailboxOneEvent, BusinessMailboxOneState> {
  BusinessMailboxOneBloc(BusinessMailboxOneState initialState)
      : super(initialState) {
    on<BusinessMailboxOneInitialEvent>(_onInitialize);
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          userImage: ImageConstant.imgHiconOutline5x6,
          userName: "Johnathon Doe",
          userDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "Story Post : 24 hr",
          storyPrice: " 200",
          pendingStatus: "Pending"),
      UserprofileItemModel(
          userImage: ImageConstant.imgLayer4,
          userName: "Johnathon Doe",
          userDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "15s Video Story Post : 24 hr ",
          storyPrice: " 200",
          pendingStatus: "Pending"),
      UserprofileItemModel(
          userImage: ImageConstant.imgHiconOutline6x6,
          userName: "Johnathon Doe",
          userDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "20s Audio Post : 3 days ",
          storyPrice: " 700",
          pendingStatus: "Pending"),
      UserprofileItemModel(
          userImage: ImageConstant.imgLayer4,
          userName: "Johnathon Doe",
          userDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "Story Post : 24 hr",
          storyPrice: " 1000",
          pendingStatus: "Pending")
    ];
  }

  _onInitialize(
    BusinessMailboxOneInitialEvent event,
    Emitter<BusinessMailboxOneState> emit,
  ) async {
    emit(state.copyWith(
      editTextController: TextEditingController(),
      editTextController1: TextEditingController(),
      editTextController2: TextEditingController(),
    ));
    emit(state.copyWith(
        businessMailboxOneModelObj: state.businessMailboxOneModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }
}
