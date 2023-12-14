// ignore_for_file: must_be_immutable

part of 'login_ten_bloc.dart';

/// Represents the state of LoginTen in the application.
class LoginTenState extends Equatable {
  LoginTenState({
    this.phoneNumberController,
    this.loginTenModelObj,
  });

  TextEditingController? phoneNumberController;

  LoginTenModel? loginTenModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        loginTenModelObj,
      ];
  LoginTenState copyWith({
    TextEditingController? phoneNumberController,
    LoginTenModel? loginTenModelObj,
  }) {
    return LoginTenState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      loginTenModelObj: loginTenModelObj ?? this.loginTenModelObj,
    );
  }
}
