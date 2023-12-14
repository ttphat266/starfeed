// ignore_for_file: must_be_immutable

part of 'sign_up_screen_one_bloc.dart';

/// Represents the state of SignUpScreenOne in the application.
class SignUpScreenOneState extends Equatable {
  SignUpScreenOneState({this.signUpScreenOneModelObj});

  SignUpScreenOneModel? signUpScreenOneModelObj;

  @override
  List<Object?> get props => [
        signUpScreenOneModelObj,
      ];
  SignUpScreenOneState copyWith(
      {SignUpScreenOneModel? signUpScreenOneModelObj}) {
    return SignUpScreenOneState(
      signUpScreenOneModelObj:
          signUpScreenOneModelObj ?? this.signUpScreenOneModelObj,
    );
  }
}
