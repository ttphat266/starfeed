// ignore_for_file: must_be_immutable

part of 'business_profile_user_two_bloc.dart';

/// Represents the state of BusinessProfileUserTwo in the application.
class BusinessProfileUserTwoState extends Equatable {
  BusinessProfileUserTwoState({this.businessProfileUserTwoModelObj});

  BusinessProfileUserTwoModel? businessProfileUserTwoModelObj;

  @override
  List<Object?> get props => [
        businessProfileUserTwoModelObj,
      ];
  BusinessProfileUserTwoState copyWith(
      {BusinessProfileUserTwoModel? businessProfileUserTwoModelObj}) {
    return BusinessProfileUserTwoState(
      businessProfileUserTwoModelObj:
          businessProfileUserTwoModelObj ?? this.businessProfileUserTwoModelObj,
    );
  }
}
