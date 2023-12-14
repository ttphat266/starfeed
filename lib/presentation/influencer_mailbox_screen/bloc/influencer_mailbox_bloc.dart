import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile2_item_model.dart';
import 'package:phat_s_application1/presentation/influencer_mailbox_screen/models/influencer_mailbox_model.dart';
part 'influencer_mailbox_event.dart';
part 'influencer_mailbox_state.dart';

/// A bloc that manages the state of a InfluencerMailbox according to the event that is dispatched to it.
class InfluencerMailboxBloc
    extends Bloc<InfluencerMailboxEvent, InfluencerMailboxState> {
  InfluencerMailboxBloc(InfluencerMailboxState initialState)
      : super(initialState) {
    on<InfluencerMailboxInitialEvent>(_onInitialize);
  }

  List<Userprofile2ItemModel> fillUserprofile2ItemList() {
    return [
      Userprofile2ItemModel(
          userImage: ImageConstant.imgHiconOutline5x6,
          username: "Johnathon Doe",
          description:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "Story Post : 24 hr",
          price: " 200",
          acceptButton: "Accept",
          denyButton: "Deny"),
      Userprofile2ItemModel(
          userImage: ImageConstant.imgLayer4,
          username: "Johnathon Doe",
          description:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "15s Video Story Post : 24 hr ",
          price: " 500",
          acceptButton: "Accept",
          denyButton: "Deny"),
      Userprofile2ItemModel(userImage: ImageConstant.imgHiconOutline6x6),
      Userprofile2ItemModel(
          userImage: ImageConstant.imgLayer4,
          username: "Johnathon Doe",
          description:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "30s Video Story Post : 24 hr ",
          price: " 1000",
          acceptButton: "Accept",
          denyButton: "Deny"),
      Userprofile2ItemModel(
          userImage: ImageConstant.imgLayer4,
          username: "Johnathon Doe",
          description:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          storyPost: "30s Video Story Post : 24 hr ",
          price: " 800",
          acceptButton: "Accept",
          denyButton: "Deny")
    ];
  }

  _onInitialize(
    InfluencerMailboxInitialEvent event,
    Emitter<InfluencerMailboxState> emit,
  ) async {
    emit(state.copyWith(
      editTextController: TextEditingController(),
      editTextController1: TextEditingController(),
      editTextController2: TextEditingController(),
    ));
    emit(state.copyWith(
        influencerMailboxModelObj: state.influencerMailboxModelObj?.copyWith(
      userprofile2ItemList: fillUserprofile2ItemList(),
    )));
  }
}
