import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/notification_settings_one_screen/models/notification_settings_one_model.dart';
part 'notification_settings_one_event.dart';
part 'notification_settings_one_state.dart';

/// A bloc that manages the state of a NotificationSettingsOne according to the event that is dispatched to it.
class NotificationSettingsOneBloc
    extends Bloc<NotificationSettingsOneEvent, NotificationSettingsOneState> {
  NotificationSettingsOneBloc(NotificationSettingsOneState initialState)
      : super(initialState) {
    on<NotificationSettingsOneInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
    on<ChangeSwitch2Event>(_changeSwitch2);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<NotificationSettingsOneState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<NotificationSettingsOneState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }

  _changeSwitch2(
    ChangeSwitch2Event event,
    Emitter<NotificationSettingsOneState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch2: event.value,
    ));
  }

  _onInitialize(
    NotificationSettingsOneInitialEvent event,
    Emitter<NotificationSettingsOneState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
      isSelectedSwitch1: false,
      isSelectedSwitch2: false,
    ));
  }
}
