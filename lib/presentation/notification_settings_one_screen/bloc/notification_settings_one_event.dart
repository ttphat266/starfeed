// ignore_for_file: must_be_immutable

part of 'notification_settings_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationSettingsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationSettingsOneEvent extends Equatable {}

/// Event that is dispatched when the NotificationSettingsOne widget is first created.
class NotificationSettingsOneInitialEvent extends NotificationSettingsOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends NotificationSettingsOneEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends NotificationSettingsOneEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends NotificationSettingsOneEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
