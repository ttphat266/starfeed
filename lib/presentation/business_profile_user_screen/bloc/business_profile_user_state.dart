// ignore_for_file: must_be_immutable

part of 'business_profile_user_bloc.dart';

/// Represents the state of BusinessProfileUser in the application.
class BusinessProfileUserState extends Equatable {
  BusinessProfileUserState({this.businessProfileUserModelObj});

  BusinessProfileUserModel? businessProfileUserModelObj;

  @override
  List<Object?> get props => [
        businessProfileUserModelObj,
      ];
  BusinessProfileUserState copyWith(
      {BusinessProfileUserModel? businessProfileUserModelObj}) {
    return BusinessProfileUserState(
      businessProfileUserModelObj:
          businessProfileUserModelObj ?? this.businessProfileUserModelObj,
    );
  }
}
