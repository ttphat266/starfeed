import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_profile_influencer_screen/models/my_profile_influencer_model.dart';
part 'my_profile_influencer_event.dart';
part 'my_profile_influencer_state.dart';

/// A bloc that manages the state of a MyProfileInfluencer according to the event that is dispatched to it.
class MyProfileInfluencerBloc
    extends Bloc<MyProfileInfluencerEvent, MyProfileInfluencerState> {
  MyProfileInfluencerBloc(MyProfileInfluencerState initialState)
      : super(initialState) {
    on<MyProfileInfluencerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyProfileInfluencerInitialEvent event,
    Emitter<MyProfileInfluencerState> emit,
  ) async {}
}
