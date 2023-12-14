// ignore_for_file: must_be_immutable

part of 'login_seven_bloc.dart';

/// Represents the state of LoginSeven in the application.
class LoginSevenState extends Equatable {
  LoginSevenState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginSevenModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginSevenModel? loginSevenModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        loginSevenModelObj,
      ];
  LoginSevenState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginSevenModel? loginSevenModelObj,
  }) {
    return LoginSevenState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginSevenModelObj: loginSevenModelObj ?? this.loginSevenModelObj,
    );
  }
}
