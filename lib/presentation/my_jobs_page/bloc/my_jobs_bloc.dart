import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile1_item_model.dart';
import 'package:phat_s_application1/presentation/my_jobs_page/models/my_jobs_model.dart';
part 'my_jobs_event.dart';
part 'my_jobs_state.dart';

/// A bloc that manages the state of a MyJobs according to the event that is dispatched to it.
class MyJobsBloc extends Bloc<MyJobsEvent, MyJobsState> {
  MyJobsBloc(MyJobsState initialState) : super(initialState) {
    on<MyJobsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyJobsInitialEvent event,
    Emitter<MyJobsState> emit,
  ) async {
    emit(state.copyWith(
        myJobsModelObj: state.myJobsModelObj?.copyWith(
      userprofile1ItemList: fillUserprofile1ItemList(),
    )));
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          iconButton: ImageConstant.imgLayer4,
          username: "Johnathon Doe",
          description:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          story: "15s Video Story Post : 24 hr ",
          amount: " 200"),
      Userprofile1ItemModel(
          iconButton: ImageConstant.imgHiconOutline6x6,
          username: "Johnathon Doe",
          description:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          story: "20s Audio Post : 3 days ",
          amount: " 700"),
      Userprofile1ItemModel(
          iconButton: ImageConstant.imgLayer4,
          username: "Johnathon Doe",
          description:
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...",
          story: "Story Post : 24 hr",
          amount: " 1000")
    ];
  }
}
