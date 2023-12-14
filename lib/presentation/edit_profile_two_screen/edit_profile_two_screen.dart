import 'bloc/edit_profile_two_bloc.dart';
import 'models/edit_profile_two_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_outlined_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class EditProfileTwoScreen extends StatelessWidget {
  const EditProfileTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<EditProfileTwoBloc>(
      create: (context) => EditProfileTwoBloc(EditProfileTwoState(
        editProfileTwoModelObj: EditProfileTwoModel(),
      ))
        ..add(EditProfileTwoInitialEvent()),
      child: EditProfileTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                bottom: 98.v,
              ),
              child: Column(
                children: [
                  _buildHiconLinearRow(context),
                  SizedBox(height: 14.v),
                  Text(
                    "lbl_edit_picture".tr,
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "msg_basic_information".tr,
                        style: CustomTextStyles.titleMediumLexendBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "lbl_name".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildNameEditText(context),
                  SizedBox(height: 24.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "lbl_bio".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildPlaceForRapAndColumn(context),
                  SizedBox(height: 39.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "lbl_social_media".tr,
                        style: CustomTextStyles.titleMediumLexendBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
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
                  ),
                  SizedBox(height: 41.v),
                  _buildInstagramComRow(context),
                  SizedBox(height: 20.v),
                  _buildRobbieprosekvalueRow(context),
                  SizedBox(height: 29.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "lbl_add_a_service".tr,
                        style: CustomTextStyles.titleMediumLexendBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "lbl_service_type".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildVideovalueEditText(context),
                  SizedBox(height: 16.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "lbl_post_type".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildStoryPostvalue(context),
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              "lbl_length".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 159.h),
                            child: Text(
                              "lbl_cost".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildDuration(context),
                  SizedBox(height: 24.v),
                  _buildAddThisService(context),
                  SizedBox(height: 38.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "lbl_my_services".tr,
                        style: CustomTextStyles.titleMediumLexendBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Divider(
                    indent: 15.h,
                    endIndent: 27.h,
                  ),
                  SizedBox(height: 9.v),
                  _buildDeleteOneRow(context),
                  SizedBox(height: 9.v),
                  Divider(
                    indent: 15.h,
                    endIndent: 27.h,
                  ),
                  SizedBox(height: 9.v),
                  _buildDeleteTwoRow(context),
                  SizedBox(height: 8.v),
                  Divider(
                    indent: 15.h,
                    endIndent: 27.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHiconLinearRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.6,
          child: CustomImageView(
            imagePath: ImageConstant.imgHiconLinear,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(
              top: 28.v,
              bottom: 251.v,
            ),
          ),
        ),
        Container(
          height: 307.v,
          width: 336.h,
          margin: EdgeInsets.only(left: 52.h),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse145,
                height: 220.v,
                width: 214.h,
                alignment: Alignment.topRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse810243x243,
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
                    left: 80.h,
                    top: 30.v,
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
  Widget _buildNameEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 27.h,
      ),
      child: BlocSelector<EditProfileTwoBloc, EditProfileTwoState,
          TextEditingController?>(
        selector: (state) => state.nameEditTextController,
        builder: (context, nameEditTextController) {
          return CustomTextFormField(
            controller: nameEditTextController,
            hintText: "lbl_robbie_prosek".tr,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 17.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaceForRapAndColumn(BuildContext context) {
    return Container(
      width: 374.h,
      margin: EdgeInsets.only(
        left: 15.h,
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
  Widget _buildInstagramComRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 27.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
          Container(
            width: 235.h,
            margin: EdgeInsets.only(left: 16.h),
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Text(
              "lbl_robbieprosek3".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRobbieprosekvalue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22.h),
      child: BlocSelector<EditProfileTwoBloc, EditProfileTwoState,
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
    );
  }

  /// Section Widget
  Widget _buildRobbieprosekvalueRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 27.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
          _buildRobbieprosekvalue(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVideovalueEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 27.h,
      ),
      child: BlocSelector<EditProfileTwoBloc, EditProfileTwoState,
          TextEditingController?>(
        selector: (state) => state.videovalueEditTextController,
        builder: (context, videovalueEditTextController) {
          return CustomTextFormField(
            controller: videovalueEditTextController,
            hintText: "lbl_video".tr,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 14.v, 10.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgHiconLinearLeft3,
                height: 28.adaptSize,
                width: 28.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 55.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildStoryPostvalueStack(BuildContext context) {
    return BlocSelector<EditProfileTwoBloc, EditProfileTwoState,
        TextEditingController?>(
      selector: (state) => state.storyPostvalueStackController,
      builder: (context, storyPostvalueStackController) {
        return CustomTextFormField(
          width: 374.h,
          controller: storyPostvalueStackController,
          hintText: "lbl_story_post".tr,
          alignment: Alignment.topCenter,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 14.v, 10.h, 13.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconLinearLeft3,
              height: 28.adaptSize,
              width: 28.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 55.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStoryPostvalue(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 358.v,
        width: 374.h,
        margin: EdgeInsets.only(left: 14.h),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 10.v),
                    Container(
                      width: 317.h,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        right: 32.h,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dolor".tr,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLargeInter,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Opacity(
                        opacity: 0.5,
                        child: Text(
                          "lbl_250_500".tr,
                          style: CustomTextStyles.bodySmallInter_1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 69.v),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_duration_of_post2".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 10.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 9.h,
                        vertical: 12.v,
                      ),
                      decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 5.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "lbl_24_hours".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgHiconLinearLeft3,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              margin: EdgeInsets.only(top: 1.v),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Text(
                      "lbl_description".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ),
            _buildStoryPostvalueStack(context),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(
                  top: 38.v,
                  right: 9.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 20.v,
                ),
                decoration: AppDecoration.outlineBlack900,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_story_post".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 12.v),
                    Text(
                      "lbl_main_feed".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 15.v),
                    Text(
                      "lbl_other".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 26.v),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDurationEditText(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 15.h),
        child: BlocSelector<EditProfileTwoBloc, EditProfileTwoState,
            TextEditingController?>(
          selector: (state) => state.durationEditTextController,
          builder: (context, durationEditTextController) {
            return CustomTextFormField(
              controller: durationEditTextController,
              hintText: "lbl_15_seconds".tr,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 14.v, 11.h, 13.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgHiconLinearLeft3,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 55.v,
              ),
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceEditText(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: BlocSelector<EditProfileTwoBloc, EditProfileTwoState,
            TextEditingController?>(
          selector: (state) => state.priceEditTextController,
          builder: (context, priceEditTextController) {
            return CustomTextFormField(
              controller: priceEditTextController,
              hintText: "lbl_4002".tr,
              textInputAction: TextInputAction.done,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 17.v,
              ),
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDuration(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 27.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildDurationEditText(context),
          _buildPriceEditText(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddThisService(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_add_this_service".tr,
      margin: EdgeInsets.only(
        left: 15.h,
        right: 27.h,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimary,
    );
  }

  /// Section Widget
  Widget _buildDeleteOneRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 27.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img001Delete1,
            height: 18.adaptSize,
            width: 18.adaptSize,
          ),
          Spacer(
            flex: 23,
          ),
          Text(
            "lbl_video".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Spacer(
            flex: 38,
          ),
          Text(
            "lbl_30_seconds".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Spacer(
            flex: 38,
          ),
          Text(
            "lbl_750".tr,
            style: theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeleteTwoRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 26.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img001Delete1,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Spacer(
            flex: 16,
          ),
          Text(
            "lbl_photo".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Spacer(
            flex: 41,
          ),
          Text(
            "lbl".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Spacer(
            flex: 41,
          ),
          Text(
            "lbl_250".tr,
            style: theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
