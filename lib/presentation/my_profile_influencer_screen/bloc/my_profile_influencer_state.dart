// ignore_for_file: must_be_immutable

part of 'my_profile_influencer_bloc.dart';

/// Represents the state of MyProfileInfluencer in the application.
class MyProfileInfluencerState extends Equatable {
  MyProfileInfluencerState({this.myProfileInfluencerModelObj});

  MyProfileInfluencerModel? myProfileInfluencerModelObj;

  @override
  List<Object?> get props => [
        myProfileInfluencerModelObj,
      ];
  MyProfileInfluencerState copyWith(
      {MyProfileInfluencerModel? myProfileInfluencerModelObj}) {
    return MyProfileInfluencerState(
      myProfileInfluencerModelObj:
          myProfileInfluencerModelObj ?? this.myProfileInfluencerModelObj,
    );
  }
}
