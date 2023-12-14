import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/notification_settings_screen/models/notification_settings_model.dart';
part 'notification_settings_event.dart';
part 'notification_settings_state.dart';

/// A bloc that manages the state of a NotificationSettings according to the event that is dispatched to it.
class NotificationSettingsBloc
    extends Bloc<NotificationSettingsEvent, NotificationSettingsState> {
  NotificationSettingsBloc(NotificationSettingsState initialState)
      : super(initialState) {
    on<NotificationSettingsInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
    on<ChangeSwitch2Event>(_changeSwitch2);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<NotificationSettingsState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<NotificationSettingsState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }

  _changeSwitch2(
    ChangeSwitch2Event event,
    Emitter<NotificationSettingsState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch2: event.value,
    ));
  }

  _onInitialize(
    NotificationSettingsInitialEvent event,
    Emitter<NotificationSettingsState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
      isSelectedSwitch1: false,
      isSelectedSwitch2: false,
    ));
  }
}
