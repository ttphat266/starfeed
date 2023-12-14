import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/edit_profile_one_screen/models/edit_profile_one_model.dart';
part 'edit_profile_one_event.dart';
part 'edit_profile_one_state.dart';

/// A bloc that manages the state of a EditProfileOne according to the event that is dispatched to it.
class EditProfileOneBloc
    extends Bloc<EditProfileOneEvent, EditProfileOneState> {
  EditProfileOneBloc(EditProfileOneState initialState) : super(initialState) {
    on<EditProfileOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditProfileOneInitialEvent event,
    Emitter<EditProfileOneState> emit,
  ) async {
    emit(state.copyWith(
      nameEditTextController: TextEditingController(),
      robbieprosekvalueController: TextEditingController(),
      videovalueEditTextController: TextEditingController(),
      durationEditTextController: TextEditingController(),
      durationController: TextEditingController(),
      priceController: TextEditingController(),
    ));
  }
}
