// ignore_for_file: must_be_immutable

part of 'login_eleven_bloc.dart';

/// Represents the state of LoginEleven in the application.
class LoginElevenState extends Equatable {
  LoginElevenState({
    this.otpController,
    this.loginElevenModelObj,
  });

  TextEditingController? otpController;

  LoginElevenModel? loginElevenModelObj;

  @override
  List<Object?> get props => [
        otpController,
        loginElevenModelObj,
      ];
  LoginElevenState copyWith({
    TextEditingController? otpController,
    LoginElevenModel? loginElevenModelObj,
  }) {
    return LoginElevenState(
      otpController: otpController ?? this.otpController,
      loginElevenModelObj: loginElevenModelObj ?? this.loginElevenModelObj,
    );
  }
}
