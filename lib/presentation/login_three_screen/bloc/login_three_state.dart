// ignore_for_file: must_be_immutable

part of 'login_three_bloc.dart';

/// Represents the state of LoginThree in the application.
class LoginThreeState extends Equatable {
  LoginThreeState({
    this.phoneNumberController,
    this.loginThreeModelObj,
  });

  TextEditingController? phoneNumberController;

  LoginThreeModel? loginThreeModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        loginThreeModelObj,
      ];
  LoginThreeState copyWith({
    TextEditingController? phoneNumberController,
    LoginThreeModel? loginThreeModelObj,
  }) {
    return LoginThreeState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      loginThreeModelObj: loginThreeModelObj ?? this.loginThreeModelObj,
    );
  }
}
