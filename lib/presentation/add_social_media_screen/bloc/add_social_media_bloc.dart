import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/add_social_media_screen/models/add_social_media_model.dart';
part 'add_social_media_event.dart';
part 'add_social_media_state.dart';

/// A bloc that manages the state of a AddSocialMedia according to the event that is dispatched to it.
class AddSocialMediaBloc
    extends Bloc<AddSocialMediaEvent, AddSocialMediaState> {
  AddSocialMediaBloc(AddSocialMediaState initialState) : super(initialState) {
    on<AddSocialMediaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddSocialMediaInitialEvent event,
    Emitter<AddSocialMediaState> emit,
  ) async {
    emit(state.copyWith(
      facebookValueEditTextController: TextEditingController(),
      robbieProsekValueEditTextController: TextEditingController(),
      pasteLinkToFacebookAccountValueEditTextController:
          TextEditingController(),
      valueEditTextController: TextEditingController(),
    ));
  }
}
