import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/menu_one_screen/models/menu_one_model.dart';
part 'menu_one_event.dart';
part 'menu_one_state.dart';

/// A bloc that manages the state of a MenuOne according to the event that is dispatched to it.
class MenuOneBloc extends Bloc<MenuOneEvent, MenuOneState> {
  MenuOneBloc(MenuOneState initialState) : super(initialState) {
    on<MenuOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MenuOneInitialEvent event,
    Emitter<MenuOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
