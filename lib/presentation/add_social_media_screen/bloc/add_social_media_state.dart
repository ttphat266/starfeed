// ignore_for_file: must_be_immutable

part of 'add_social_media_bloc.dart';

/// Represents the state of AddSocialMedia in the application.
class AddSocialMediaState extends Equatable {
  AddSocialMediaState({
    this.facebookValueEditTextController,
    this.robbieProsekValueEditTextController,
    this.pasteLinkToFacebookAccountValueEditTextController,
    this.valueEditTextController,
    this.addSocialMediaModelObj,
  });

  TextEditingController? facebookValueEditTextController;

  TextEditingController? robbieProsekValueEditTextController;

  TextEditingController? pasteLinkToFacebookAccountValueEditTextController;

  TextEditingController? valueEditTextController;

  AddSocialMediaModel? addSocialMediaModelObj;

  @override
  List<Object?> get props => [
        facebookValueEditTextController,
        robbieProsekValueEditTextController,
        pasteLinkToFacebookAccountValueEditTextController,
        valueEditTextController,
        addSocialMediaModelObj,
      ];
  AddSocialMediaState copyWith({
    TextEditingController? facebookValueEditTextController,
    TextEditingController? robbieProsekValueEditTextController,
    TextEditingController? pasteLinkToFacebookAccountValueEditTextController,
    TextEditingController? valueEditTextController,
    AddSocialMediaModel? addSocialMediaModelObj,
  }) {
    return AddSocialMediaState(
      facebookValueEditTextController: facebookValueEditTextController ??
          this.facebookValueEditTextController,
      robbieProsekValueEditTextController:
          robbieProsekValueEditTextController ??
              this.robbieProsekValueEditTextController,
      pasteLinkToFacebookAccountValueEditTextController:
          pasteLinkToFacebookAccountValueEditTextController ??
              this.pasteLinkToFacebookAccountValueEditTextController,
      valueEditTextController:
          valueEditTextController ?? this.valueEditTextController,
      addSocialMediaModelObj:
          addSocialMediaModelObj ?? this.addSocialMediaModelObj,
    );
  }
}
