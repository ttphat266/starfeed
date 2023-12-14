import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/edit_profile_three_screen/models/edit_profile_three_model.dart';
part 'edit_profile_three_event.dart';
part 'edit_profile_three_state.dart';

/// A bloc that manages the state of a EditProfileThree according to the event that is dispatched to it.
class EditProfileThreeBloc
    extends Bloc<EditProfileThreeEvent, EditProfileThreeState> {
  EditProfileThreeBloc(EditProfileThreeState initialState)
      : super(initialState) {
    on<EditProfileThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditProfileThreeInitialEvent event,
    Emitter<EditProfileThreeState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      robbieprosekvalueController: TextEditingController(),
      videoValueController: TextEditingController(),
      storyPostValueController: TextEditingController(),
      durationController: TextEditingController(),
      durationController1: TextEditingController(),
      priceController: TextEditingController(),
    ));
  }
}
