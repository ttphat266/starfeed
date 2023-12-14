import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:phat_s_application1/presentation/history_screen/models/history_model.dart';
part 'history_event.dart';
part 'history_state.dart';

/// A bloc that manages the state of a History according to the event that is dispatched to it.
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc(HistoryState initialState) : super(initialState) {
    on<HistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistoryInitialEvent event,
    Emitter<HistoryState> emit,
  ) async {
    emit(state.copyWith(
        historyModelObj: state.historyModelObj?.copyWith(
      userprofilelistItemList: fillUserprofilelistItemList(),
    )));
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          userImage: ImageConstant.imgEllipse813,
          userName: "Johnathon Doe",
          postText: "1 Image, Story Post : 24 hr",
          postPrice: " 200",
          postDate: "20 jun 2023"),
      UserprofilelistItemModel(
          userImage: ImageConstant.imgEllipse81554x54,
          userName: "Johnathon Doe",
          postText: "1 Image, Story Post : 24 hr",
          postPrice: " 200",
          postDate: "20 jun 2023"),
      UserprofilelistItemModel(
          userImage: ImageConstant.imgEllipse817,
          userName: "Johnathon Doe",
          postText: "1 Image, Story Post : 24 hr",
          postPrice: " 200",
          postDate: "20 jun 2023"),
      UserprofilelistItemModel(
          userImage: ImageConstant.imgEllipse819,
          userName: "Johnathon Doe",
          postText: "1 Image, Story Post : 24 hr",
          postPrice: " 200",
          postDate: "20 jun 2023"),
      UserprofilelistItemModel(
          userImage: ImageConstant.imgEllipse820,
          userName: "Johnathon Doe",
          postText: "1 Video, Story Post : 3 days",
          postPrice: " 200",
          postDate: "20 jun 2023")
    ];
  }
}
