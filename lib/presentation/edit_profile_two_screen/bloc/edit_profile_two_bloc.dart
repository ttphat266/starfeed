import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/edit_profile_two_screen/models/edit_profile_two_model.dart';
part 'edit_profile_two_event.dart';
part 'edit_profile_two_state.dart';

/// A bloc that manages the state of a EditProfileTwo according to the event that is dispatched to it.
class EditProfileTwoBloc
    extends Bloc<EditProfileTwoEvent, EditProfileTwoState> {
  EditProfileTwoBloc(EditProfileTwoState initialState) : super(initialState) {
    on<EditProfileTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditProfileTwoInitialEvent event,
    Emitter<EditProfileTwoState> emit,
  ) async {
    emit(state.copyWith(
      nameEditTextController: TextEditingController(),
      robbieprosekvalueController: TextEditingController(),
      videovalueEditTextController: TextEditingController(),
      storyPostvalueStackController: TextEditingController(),
      durationEditTextController: TextEditingController(),
      priceEditTextController: TextEditingController(),
    ));
  }
}
