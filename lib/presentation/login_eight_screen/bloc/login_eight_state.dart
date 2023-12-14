// ignore_for_file: must_be_immutable

part of 'login_eight_bloc.dart';

/// Represents the state of LoginEight in the application.
class LoginEightState extends Equatable {
  LoginEightState({
    this.otpController,
    this.loginEightModelObj,
  });

  TextEditingController? otpController;

  LoginEightModel? loginEightModelObj;

  @override
  List<Object?> get props => [
        otpController,
        loginEightModelObj,
      ];
  LoginEightState copyWith({
    TextEditingController? otpController,
    LoginEightModel? loginEightModelObj,
  }) {
    return LoginEightState(
      otpController: otpController ?? this.otpController,
      loginEightModelObj: loginEightModelObj ?? this.loginEightModelObj,
    );
  }
}
