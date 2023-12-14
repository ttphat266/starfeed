// ignore_for_file: must_be_immutable

part of 'login_one_tab_container_bloc.dart';

/// Represents the state of LoginOneTabContainer in the application.
class LoginOneTabContainerState extends Equatable {
  LoginOneTabContainerState({this.loginOneTabContainerModelObj});

  LoginOneTabContainerModel? loginOneTabContainerModelObj;

  @override
  List<Object?> get props => [
        loginOneTabContainerModelObj,
      ];
  LoginOneTabContainerState copyWith(
      {LoginOneTabContainerModel? loginOneTabContainerModelObj}) {
    return LoginOneTabContainerState(
      loginOneTabContainerModelObj:
          loginOneTabContainerModelObj ?? this.loginOneTabContainerModelObj,
    );
  }
}
