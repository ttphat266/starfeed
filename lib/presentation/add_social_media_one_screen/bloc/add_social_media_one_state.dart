// ignore_for_file: must_be_immutable

part of 'add_social_media_one_bloc.dart';

/// Represents the state of AddSocialMediaOne in the application.
class AddSocialMediaOneState extends Equatable {
  AddSocialMediaOneState({
    this.hiconLinearLeftThreeEditTextController,
    this.addressEditTextController,
    this.pastelinkToFacebookAccountEditTextController,
    this.followersNumberEditTextController,
    this.addSocialMediaOneModelObj,
  });

  TextEditingController? hiconLinearLeftThreeEditTextController;

  TextEditingController? addressEditTextController;

  TextEditingController? pastelinkToFacebookAccountEditTextController;

  TextEditingController? followersNumberEditTextController;

  AddSocialMediaOneModel? addSocialMediaOneModelObj;

  @override
  List<Object?> get props => [
        hiconLinearLeftThreeEditTextController,
        addressEditTextController,
        pastelinkToFacebookAccountEditTextController,
        followersNumberEditTextController,
        addSocialMediaOneModelObj,
      ];
  AddSocialMediaOneState copyWith({
    TextEditingController? hiconLinearLeftThreeEditTextController,
    TextEditingController? addressEditTextController,
    TextEditingController? pastelinkToFacebookAccountEditTextController,
    TextEditingController? followersNumberEditTextController,
    AddSocialMediaOneModel? addSocialMediaOneModelObj,
  }) {
    return AddSocialMediaOneState(
      hiconLinearLeftThreeEditTextController:
          hiconLinearLeftThreeEditTextController ??
              this.hiconLinearLeftThreeEditTextController,
      addressEditTextController:
          addressEditTextController ?? this.addressEditTextController,
      pastelinkToFacebookAccountEditTextController:
          pastelinkToFacebookAccountEditTextController ??
              this.pastelinkToFacebookAccountEditTextController,
      followersNumberEditTextController: followersNumberEditTextController ??
          this.followersNumberEditTextController,
      addSocialMediaOneModelObj:
          addSocialMediaOneModelObj ?? this.addSocialMediaOneModelObj,
    );
  }
}
