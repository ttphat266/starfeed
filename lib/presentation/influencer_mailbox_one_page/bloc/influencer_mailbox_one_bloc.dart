import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilesection2_item_model.dart';
import 'package:phat_s_application1/presentation/influencer_mailbox_one_page/models/influencer_mailbox_one_model.dart';
part 'influencer_mailbox_one_event.dart';
part 'influencer_mailbox_one_state.dart';

/// A bloc that manages the state of a InfluencerMailboxOne according to the event that is dispatched to it.
class InfluencerMailboxOneBloc
    extends Bloc<InfluencerMailboxOneEvent, InfluencerMailboxOneState> {
  InfluencerMailboxOneBloc(InfluencerMailboxOneState initialState)
      : super(initialState) {
    on<InfluencerMailboxOneInitialEvent>(_onInitialize);
  }

  List<Userprofilesection2ItemModel> fillUserprofilesection2ItemList() {
    return [
      Userprofilesection2ItemModel(
          userImage: ImageConstant.imgHiconOutline5x6,
          userName: "Johnathon Doe",
          userDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "Story Post : 24 hr",
          userAmount: " 200",
          acceptButton: "Accept",
          denyButton: "Deny"),
      Userprofilesection2ItemModel(
          userImage: ImageConstant.imgLayer4,
          userName: "Johnathon Doe",
          userDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "15s Video Story Post : 24 hr ",
          userAmount: " 500",
          acceptButton: "Accept",
          denyButton: "Deny"),
      Userprofilesection2ItemModel(userImage: ImageConstant.imgHiconOutline6x6),
      Userprofilesection2ItemModel(
          userImage: ImageConstant.imgLayer4,
          userName: "Johnathon Doe",
          userDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "30s Video Story Post : 24 hr ",
          userAmount: " 1000",
          acceptButton: "Accept",
          denyButton: "Deny"),
      Userprofilesection2ItemModel(
          userImage: ImageConstant.imgLayer4,
          userName: "Johnathon Doe",
          userDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "30s Video Story Post : 24 hr ",
          userAmount: " 800",
          acceptButton: "Accept",
          denyButton: "Deny")
    ];
  }

  _onInitialize(
    InfluencerMailboxOneInitialEvent event,
    Emitter<InfluencerMailboxOneState> emit,
  ) async {
    emit(state.copyWith(
      editTextController: TextEditingController(),
      editTextController1: TextEditingController(),
      editTextController2: TextEditingController(),
    ));
    emit(state.copyWith(
        influencerMailboxOneModelObj:
            state.influencerMailboxOneModelObj?.copyWith(
      userprofilesection2ItemList: fillUserprofilesection2ItemList(),
    )));
  }
}
