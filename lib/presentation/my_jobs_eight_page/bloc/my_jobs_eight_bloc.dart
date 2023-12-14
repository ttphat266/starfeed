import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile3_item_model.dart';
import 'package:phat_s_application1/presentation/my_jobs_eight_page/models/my_jobs_eight_model.dart';
part 'my_jobs_eight_event.dart';
part 'my_jobs_eight_state.dart';

/// A bloc that manages the state of a MyJobsEight according to the event that is dispatched to it.
class MyJobsEightBloc extends Bloc<MyJobsEightEvent, MyJobsEightState> {
  MyJobsEightBloc(MyJobsEightState initialState) : super(initialState) {
    on<MyJobsEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyJobsEightInitialEvent event,
    Emitter<MyJobsEightState> emit,
  ) async {
    emit(state.copyWith(
        myJobsEightModelObj: state.myJobsEightModelObj?.copyWith(
      userprofile3ItemList: fillUserprofile3ItemList(),
    )));
  }

  List<Userprofile3ItemModel> fillUserprofile3ItemList() {
    return [
      Userprofile3ItemModel(
          dynamicButton: ImageConstant.imgLayer4,
          dynamicName: "Johnathon Doe",
          dynamicDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          dynamicPost: "15s Video Story Post : 24 hr ",
          dynamicPrice: " 200",
          dynamicAccept: "Accept",
          dynamicDeny: "Deny",
          dynamicText: "View Ad"),
      Userprofile3ItemModel(
          dynamicButton: ImageConstant.imgHiconOutline6x6,
          dynamicName: "Johnathon Doe",
          dynamicDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          dynamicPost: "20s Audio Post : 3 days ",
          dynamicPrice: " 700",
          dynamicAccept: "Accept",
          dynamicDeny: "Deny",
          dynamicText: "View Ad"),
      Userprofile3ItemModel(
          dynamicButton: ImageConstant.imgLayer4,
          dynamicName: "Johnathon Doe",
          dynamicDescription:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          dynamicPost: "Story Post : 24 hr",
          dynamicPrice: " 1000",
          dynamicAccept: "Accept",
          dynamicDeny: "Deny",
          dynamicText: "View Ad")
    ];
  }
}
