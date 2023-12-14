// ignore_for_file: must_be_immutable

part of 'notification_settings_bloc.dart';

/// Represents the state of NotificationSettings in the application.
class NotificationSettingsState extends Equatable {
  NotificationSettingsState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.notificationSettingsModelObj,
  });

  NotificationSettingsModel? notificationSettingsModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        notificationSettingsModelObj,
      ];
  NotificationSettingsState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    NotificationSettingsModel? notificationSettingsModelObj,
  }) {
    return NotificationSettingsState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      notificationSettingsModelObj:
          notificationSettingsModelObj ?? this.notificationSettingsModelObj,
    );
  }
}
