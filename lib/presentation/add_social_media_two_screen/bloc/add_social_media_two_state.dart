// ignore_for_file: must_be_immutable

part of 'add_social_media_two_bloc.dart';

/// Represents the state of AddSocialMediaTwo in the application.
class AddSocialMediaTwoState extends Equatable {
  AddSocialMediaTwoState({
    this.facebookValueController,
    this.pasteLinkToFacebookAccountValueController,
    this.valueController,
    this.addSocialMediaTwoModelObj,
  });

  TextEditingController? facebookValueController;

  TextEditingController? pasteLinkToFacebookAccountValueController;

  TextEditingController? valueController;

  AddSocialMediaTwoModel? addSocialMediaTwoModelObj;

  @override
  List<Object?> get props => [
        facebookValueController,
        pasteLinkToFacebookAccountValueController,
        valueController,
        addSocialMediaTwoModelObj,
      ];
  AddSocialMediaTwoState copyWith({
    TextEditingController? facebookValueController,
    TextEditingController? pasteLinkToFacebookAccountValueController,
    TextEditingController? valueController,
    AddSocialMediaTwoModel? addSocialMediaTwoModelObj,
  }) {
    return AddSocialMediaTwoState(
      facebookValueController:
          facebookValueController ?? this.facebookValueController,
      pasteLinkToFacebookAccountValueController:
          pasteLinkToFacebookAccountValueController ??
              this.pasteLinkToFacebookAccountValueController,
      valueController: valueController ?? this.valueController,
      addSocialMediaTwoModelObj:
          addSocialMediaTwoModelObj ?? this.addSocialMediaTwoModelObj,
    );
  }
}
