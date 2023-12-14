import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_information_one_screen/models/my_information_one_model.dart';
part 'my_information_one_event.dart';
part 'my_information_one_state.dart';

/// A bloc that manages the state of a MyInformationOne according to the event that is dispatched to it.
class MyInformationOneBloc
    extends Bloc<MyInformationOneEvent, MyInformationOneState> {
  MyInformationOneBloc(MyInformationOneState initialState)
      : super(initialState) {
    on<MyInformationOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyInformationOneInitialEvent event,
    Emitter<MyInformationOneState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      emailController: TextEditingController(),
    ));
  }
}
