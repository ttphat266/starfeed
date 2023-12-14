// ignore_for_file: must_be_immutable

part of 'login_six_bloc.dart';

/// Represents the state of LoginSix in the application.
class LoginSixState extends Equatable {
  LoginSixState({
    this.otpController,
    this.loginSixModelObj,
  });

  TextEditingController? otpController;

  LoginSixModel? loginSixModelObj;

  @override
  List<Object?> get props => [
        otpController,
        loginSixModelObj,
      ];
  LoginSixState copyWith({
    TextEditingController? otpController,
    LoginSixModel? loginSixModelObj,
  }) {
    return LoginSixState(
      otpController: otpController ?? this.otpController,
      loginSixModelObj: loginSixModelObj ?? this.loginSixModelObj,
    );
  }
}
