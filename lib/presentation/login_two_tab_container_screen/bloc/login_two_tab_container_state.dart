// ignore_for_file: must_be_immutable

part of 'login_two_tab_container_bloc.dart';

/// Represents the state of LoginTwoTabContainer in the application.
class LoginTwoTabContainerState extends Equatable {
  LoginTwoTabContainerState({this.loginTwoTabContainerModelObj});

  LoginTwoTabContainerModel? loginTwoTabContainerModelObj;

  @override
  List<Object?> get props => [
        loginTwoTabContainerModelObj,
      ];
  LoginTwoTabContainerState copyWith(
      {LoginTwoTabContainerModel? loginTwoTabContainerModelObj}) {
    return LoginTwoTabContainerState(
      loginTwoTabContainerModelObj:
          loginTwoTabContainerModelObj ?? this.loginTwoTabContainerModelObj,
    );
  }
}
