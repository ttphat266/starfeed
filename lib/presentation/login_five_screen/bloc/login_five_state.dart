// ignore_for_file: must_be_immutable

part of 'login_five_bloc.dart';

/// Represents the state of LoginFive in the application.
class LoginFiveState extends Equatable {
  LoginFiveState({
    this.newpasswordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.loginFiveModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? confirmpasswordController;

  LoginFiveModel? loginFiveModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        newpasswordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        loginFiveModelObj,
      ];
  LoginFiveState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    LoginFiveModel? loginFiveModelObj,
  }) {
    return LoginFiveState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      loginFiveModelObj: loginFiveModelObj ?? this.loginFiveModelObj,
    );
  }
}
