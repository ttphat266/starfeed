// ignore_for_file: must_be_immutable

part of 'my_profile_influencer_one_bloc.dart';

/// Represents the state of MyProfileInfluencerOne in the application.
class MyProfileInfluencerOneState extends Equatable {
  MyProfileInfluencerOneState({this.myProfileInfluencerOneModelObj});

  MyProfileInfluencerOneModel? myProfileInfluencerOneModelObj;

  @override
  List<Object?> get props => [
        myProfileInfluencerOneModelObj,
      ];
  MyProfileInfluencerOneState copyWith(
      {MyProfileInfluencerOneModel? myProfileInfluencerOneModelObj}) {
    return MyProfileInfluencerOneState(
      myProfileInfluencerOneModelObj:
          myProfileInfluencerOneModelObj ?? this.myProfileInfluencerOneModelObj,
    );
  }
}
