// ignore_for_file: must_be_immutable

part of 'login_two_bloc.dart';

/// Represents the state of LoginTwo in the application.
class LoginTwoState extends Equatable {
  LoginTwoState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginTwoModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginTwoModel? loginTwoModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        loginTwoModelObj,
      ];
  LoginTwoState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginTwoModel? loginTwoModelObj,
  }) {
    return LoginTwoState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginTwoModelObj: loginTwoModelObj ?? this.loginTwoModelObj,
    );
  }
}
