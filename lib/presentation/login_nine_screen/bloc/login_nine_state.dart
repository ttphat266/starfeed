// ignore_for_file: must_be_immutable

part of 'login_nine_bloc.dart';

/// Represents the state of LoginNine in the application.
class LoginNineState extends Equatable {
  LoginNineState({
    this.newpasswordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.loginNineModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? confirmpasswordController;

  LoginNineModel? loginNineModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        newpasswordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        loginNineModelObj,
      ];
  LoginNineState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    LoginNineModel? loginNineModelObj,
  }) {
    return LoginNineState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      loginNineModelObj: loginNineModelObj ?? this.loginNineModelObj,
    );
  }
}
