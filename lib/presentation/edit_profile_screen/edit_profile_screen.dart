import 'bloc/edit_profile_bloc.dart';
import 'models/edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<EditProfileBloc>(
      create: (context) => EditProfileBloc(EditProfileState(
        editProfileModelObj: EditProfileModel(),
      ))
        ..add(EditProfileInitialEvent()),
      child: EditProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                bottom: 94.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHiconLinear(context),
                  SizedBox(height: 31.v),
                  Padding(
                    padding: EdgeInsets.only(left: 158.h),
                    child: Text(
                      "lbl_edit_picture".tr,
                      style: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "msg_basic_information".tr,
                      style: CustomTextStyles.titleMediumLexendBold,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "lbl_name".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      right: 27.h,
                    ),
                    child: BlocSelector<EditProfileBloc, EditProfileState,
                        TextEditingController?>(
                      selector: (state) => state.nameController,
                      builder: (context, nameController) {
                        return CustomTextFormField(
                          controller: nameController,
                          hintText: "lbl_robbie_prosek".tr,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 14.h,
                            vertical: 17.v,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "lbl_bio".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildTwentyNine(context),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Text(
                      "lbl_about_business".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildTwentyFive(context),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "lbl_social_media".tr,
                      style: CustomTextStyles.titleMediumLexendBold,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Row(
                      children: [
                        CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.outlinePrimaryTL4,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPhInstagramLogo,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: CustomIconButton(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            padding: EdgeInsets.all(8.h),
                            decoration: IconButtonStyleHelper.fillPrimary,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgRiFacebookFill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: CustomIconButton(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            padding: EdgeInsets.all(9.h),
                            decoration: IconButtonStyleHelper.outlineGray,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSettings,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 41.v),
                  _buildRobbieprosekvalue(context),
                  SizedBox(height: 20.v),
                  _buildRobbieprosekvalue1(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHiconLinear(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.6,
          child: CustomImageView(
            imagePath: ImageConstant.imgHiconLinear,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(
              top: 33.v,
              bottom: 279.v,
            ),
          ),
        ),
        Container(
          height: 340.v,
          width: 335.h,
          margin: EdgeInsets.only(left: 48.h),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse114,
                height: 220.v,
                width: 214.h,
                alignment: Alignment.topRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse8101,
                height: 243.adaptSize,
                width: 243.adaptSize,
                radius: BorderRadius.circular(
                  121.h,
                ),
                alignment: Alignment.bottomLeft,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 78.h,
                    top: 45.v,
                  ),
                  child: Text(
                    "lbl_edit_profile".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Container(
      width: 374.h,
      margin: EdgeInsets.only(
        left: 10.h,
        right: 27.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 86.v),
          SizedBox(
            width: 230.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_place_for_rap_and2".tr,
                    style: CustomTextStyles.bodyLargeInterRegular,
                  ),
                  TextSpan(
                    text: "msg_music_rap_hiphop".tr,
                    style: CustomTextStyles.bodyLargeInterRegular,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return Container(
      width: 374.h,
      margin: EdgeInsets.only(
        left: 10.h,
        right: 27.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 86.v),
          SizedBox(
            width: 230.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_place_for_rap_and2".tr,
                    style: CustomTextStyles.bodyLargeInterRegular,
                  ),
                  TextSpan(
                    text: "msg_music_rap_hiphop".tr,
                    style: CustomTextStyles.bodyLargeInterRegular,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRobbieprosekvalue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 27.h,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              bottom: 15.v,
            ),
            child: Text(
              "lbl_instagram_com".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: BlocSelector<EditProfileBloc, EditProfileState,
                TextEditingController?>(
              selector: (state) => state.robbieprosekvalueController,
              builder: (context, robbieprosekvalueController) {
                return CustomTextFormField(
                  width: 235.h,
                  controller: robbieprosekvalueController,
                  hintText: "lbl_robbieprosek3".tr,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 17.v,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRobbieprosekvalue1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 27.h,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              bottom: 15.v,
            ),
            child: Text(
              "lbl_facebook_com".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: BlocSelector<EditProfileBloc, EditProfileState,
                TextEditingController?>(
              selector: (state) => state.robbieprosekvalueController1,
              builder: (context, robbieprosekvalueController1) {
                return CustomTextFormField(
                  width: 235.h,
                  controller: robbieprosekvalueController1,
                  hintText: "lbl_robbieprosek3".tr,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 17.v,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
