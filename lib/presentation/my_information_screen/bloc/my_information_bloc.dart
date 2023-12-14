import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_information_screen/models/my_information_model.dart';
part 'my_information_event.dart';
part 'my_information_state.dart';

/// A bloc that manages the state of a MyInformation according to the event that is dispatched to it.
class MyInformationBloc extends Bloc<MyInformationEvent, MyInformationState> {
  MyInformationBloc(MyInformationState initialState) : super(initialState) {
    on<MyInformationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyInformationInitialEvent event,
    Emitter<MyInformationState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      emailController: TextEditingController(),
    ));
  }
}
