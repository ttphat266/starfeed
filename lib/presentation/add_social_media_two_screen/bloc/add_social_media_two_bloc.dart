import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/add_social_media_two_screen/models/add_social_media_two_model.dart';
part 'add_social_media_two_event.dart';
part 'add_social_media_two_state.dart';

/// A bloc that manages the state of a AddSocialMediaTwo according to the event that is dispatched to it.
class AddSocialMediaTwoBloc
    extends Bloc<AddSocialMediaTwoEvent, AddSocialMediaTwoState> {
  AddSocialMediaTwoBloc(AddSocialMediaTwoState initialState)
      : super(initialState) {
    on<AddSocialMediaTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddSocialMediaTwoInitialEvent event,
    Emitter<AddSocialMediaTwoState> emit,
  ) async {
    emit(state.copyWith(
      facebookValueController: TextEditingController(),
      pasteLinkToFacebookAccountValueController: TextEditingController(),
      valueController: TextEditingController(),
    ));
  }
}
