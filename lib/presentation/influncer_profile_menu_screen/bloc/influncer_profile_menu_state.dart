// ignore_for_file: must_be_immutable

part of 'influncer_profile_menu_bloc.dart';

/// Represents the state of InfluncerProfileMenu in the application.
class InfluncerProfileMenuState extends Equatable {
  InfluncerProfileMenuState({this.influncerProfileMenuModelObj});

  InfluncerProfileMenuModel? influncerProfileMenuModelObj;

  @override
  List<Object?> get props => [
        influncerProfileMenuModelObj,
      ];
  InfluncerProfileMenuState copyWith(
      {InfluncerProfileMenuModel? influncerProfileMenuModelObj}) {
    return InfluncerProfileMenuState(
      influncerProfileMenuModelObj:
          influncerProfileMenuModelObj ?? this.influncerProfileMenuModelObj,
    );
  }
}
