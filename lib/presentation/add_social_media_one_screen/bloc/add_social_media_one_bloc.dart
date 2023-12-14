import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/add_social_media_one_screen/models/add_social_media_one_model.dart';
part 'add_social_media_one_event.dart';
part 'add_social_media_one_state.dart';

/// A bloc that manages the state of a AddSocialMediaOne according to the event that is dispatched to it.
class AddSocialMediaOneBloc
    extends Bloc<AddSocialMediaOneEvent, AddSocialMediaOneState> {
  AddSocialMediaOneBloc(AddSocialMediaOneState initialState)
      : super(initialState) {
    on<AddSocialMediaOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddSocialMediaOneInitialEvent event,
    Emitter<AddSocialMediaOneState> emit,
  ) async {
    emit(state.copyWith(
      hiconLinearLeftThreeEditTextController: TextEditingController(),
      addressEditTextController: TextEditingController(),
      pastelinkToFacebookAccountEditTextController: TextEditingController(),
      followersNumberEditTextController: TextEditingController(),
    ));
  }
}
