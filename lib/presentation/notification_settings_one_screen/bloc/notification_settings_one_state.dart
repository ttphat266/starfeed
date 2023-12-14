// ignore_for_file: must_be_immutable

part of 'notification_settings_one_bloc.dart';

/// Represents the state of NotificationSettingsOne in the application.
class NotificationSettingsOneState extends Equatable {
  NotificationSettingsOneState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.notificationSettingsOneModelObj,
  });

  NotificationSettingsOneModel? notificationSettingsOneModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        notificationSettingsOneModelObj,
      ];
  NotificationSettingsOneState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    NotificationSettingsOneModel? notificationSettingsOneModelObj,
  }) {
    return NotificationSettingsOneState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      notificationSettingsOneModelObj: notificationSettingsOneModelObj ??
          this.notificationSettingsOneModelObj,
    );
  }
}
