// ignore_for_file: must_be_immutable

part of 'verification_one_bloc.dart';

/// Represents the state of VerificationOne in the application.
class VerificationOneState extends Equatable {
  VerificationOneState({
    this.otpController,
    this.verificationOneModelObj,
  });

  TextEditingController? otpController;

  VerificationOneModel? verificationOneModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verificationOneModelObj,
      ];
  VerificationOneState copyWith({
    TextEditingController? otpController,
    VerificationOneModel? verificationOneModelObj,
  }) {
    return VerificationOneState(
      otpController: otpController ?? this.otpController,
      verificationOneModelObj:
          verificationOneModelObj ?? this.verificationOneModelObj,
    );
  }
}
