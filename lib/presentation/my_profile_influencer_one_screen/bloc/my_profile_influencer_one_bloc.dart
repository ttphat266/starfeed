import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_profile_influencer_one_screen/models/my_profile_influencer_one_model.dart';
part 'my_profile_influencer_one_event.dart';
part 'my_profile_influencer_one_state.dart';

/// A bloc that manages the state of a MyProfileInfluencerOne according to the event that is dispatched to it.
class MyProfileInfluencerOneBloc
    extends Bloc<MyProfileInfluencerOneEvent, MyProfileInfluencerOneState> {
  MyProfileInfluencerOneBloc(MyProfileInfluencerOneState initialState)
      : super(initialState) {
    on<MyProfileInfluencerOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyProfileInfluencerOneInitialEvent event,
    Emitter<MyProfileInfluencerOneState> emit,
  ) async {}
}
