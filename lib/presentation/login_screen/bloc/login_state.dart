// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.otpController,
    this.loginModelObj,
  });

  TextEditingController? otpController;

  LoginModel? loginModelObj;

  @override
  List<Object?> get props => [
        otpController,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? otpController,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      otpController: otpController ?? this.otpController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
