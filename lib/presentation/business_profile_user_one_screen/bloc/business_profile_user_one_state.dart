// ignore_for_file: must_be_immutable

part of 'business_profile_user_one_bloc.dart';

/// Represents the state of BusinessProfileUserOne in the application.
class BusinessProfileUserOneState extends Equatable {
  BusinessProfileUserOneState({this.businessProfileUserOneModelObj});

  BusinessProfileUserOneModel? businessProfileUserOneModelObj;

  @override
  List<Object?> get props => [
        businessProfileUserOneModelObj,
      ];
  BusinessProfileUserOneState copyWith(
      {BusinessProfileUserOneModel? businessProfileUserOneModelObj}) {
    return BusinessProfileUserOneState(
      businessProfileUserOneModelObj:
          businessProfileUserOneModelObj ?? this.businessProfileUserOneModelObj,
    );
  }
}
