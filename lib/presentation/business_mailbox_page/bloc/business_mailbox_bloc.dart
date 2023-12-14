import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilesection1_item_model.dart';
import 'package:phat_s_application1/presentation/business_mailbox_page/models/business_mailbox_model.dart';
part 'business_mailbox_event.dart';
part 'business_mailbox_state.dart';

/// A bloc that manages the state of a BusinessMailbox according to the event that is dispatched to it.
class BusinessMailboxBloc
    extends Bloc<BusinessMailboxEvent, BusinessMailboxState> {
  BusinessMailboxBloc(BusinessMailboxState initialState) : super(initialState) {
    on<BusinessMailboxInitialEvent>(_onInitialize);
  }

  List<Userprofilesection1ItemModel> fillUserprofilesection1ItemList() {
    return [
      Userprofilesection1ItemModel(
          userImage: ImageConstant.imgHiconOutline5x6,
          userName: "Johnathon Doe",
          userDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "Story Post : 24 hr",
          storyPrice: " 200",
          status: "Pending"),
      Userprofilesection1ItemModel(
          userImage: ImageConstant.imgLayer4,
          userName: "Johnathon Doe",
          userDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "15s Video Story Post : 24 hr ",
          storyPrice: " 200",
          status: "Pending"),
      Userprofilesection1ItemModel(
          userImage: ImageConstant.imgHiconOutline6x6,
          userName: "Johnathon Doe",
          userDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "20s Audio Post : 3 days ",
          storyPrice: " 700",
          status: "Pending"),
      Userprofilesection1ItemModel(
          userImage: ImageConstant.imgLayer4,
          userName: "Johnathon Doe",
          userDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "Story Post : 24 hr",
          storyPrice: " 1000",
          status: "Pending")
    ];
  }

  _onInitialize(
    BusinessMailboxInitialEvent event,
    Emitter<BusinessMailboxState> emit,
  ) async {
    emit(state.copyWith(
      editTextController: TextEditingController(),
      editTextController1: TextEditingController(),
      editTextController2: TextEditingController(),
    ));
    emit(state.copyWith(
        businessMailboxModelObj: state.businessMailboxModelObj?.copyWith(
      userprofilesection1ItemList: fillUserprofilesection1ItemList(),
    )));
  }
}
