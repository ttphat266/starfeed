import 'bloc/add_social_media_two_bloc.dart';
import 'models/add_social_media_two_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class AddSocialMediaTwoScreen extends StatelessWidget {
  const AddSocialMediaTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AddSocialMediaTwoBloc>(
      create: (context) => AddSocialMediaTwoBloc(AddSocialMediaTwoState(
        addSocialMediaTwoModelObj: AddSocialMediaTwoModel(),
      ))
        ..add(AddSocialMediaTwoInitialEvent()),
      child: AddSocialMediaTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFacebookStack(context),
              SizedBox(height: 4.v),
              _buildPasteLinkToFacebookAccountValue(context),
              SizedBox(height: 24.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Text(
                    "msg_add_number_of_followers".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              _buildValue(context),
              SizedBox(height: 28.v),
              _buildAddNow1(context),
              SizedBox(height: 42.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 33.h),
                child: _buildUilSnapchatGhost(
                  context,
                  textLabel: "lbl_robbieprosek2".tr,
                  followersLabel: "lbl_78k_followers".tr,
                ),
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 33.h),
                child: _buildUilSnapchatGhost(
                  context,
                  textLabel: "lbl_robbieprosek2".tr,
                  followersLabel: "lbl_78k_followers".tr,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgBottomBarGray100,
                height: 100.v,
                width: 428.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebookValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: BlocSelector<AddSocialMediaTwoBloc, AddSocialMediaTwoState,
          TextEditingController?>(
        selector: (state) => state.facebookValueController,
        builder: (context, facebookValueController) {
          return CustomTextFormField(
            width: 374.h,
            controller: facebookValueController,
            hintText: "lbl_facebook".tr,
            alignment: Alignment.centerLeft,
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
  Widget _buildFacebookStack(BuildContext context) {
    return SizedBox(
      height: 296.v,
      width: 412.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse149,
            height: 215.v,
            width: 206.h,
            alignment: Alignment.topRight,
          ),
          Opacity(
            opacity: 0.6,
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconLinear,
              height: 28.adaptSize,
              width: 28.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 38.v),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 131.h,
                top: 40.v,
              ),
              child: Text(
                "msg_add_social_media".tr,
                style: CustomTextStyles.titleMediumMedium,
              ),
            ),
          ),
          _buildFacebookValue(context),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                top: 98.v,
              ),
              child: Text(
                "msg_add_social_media2".tr,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                bottom: 6.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_enter_username".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 40.v),
                  Text(
                    "lbl_add_link".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(
                right: 28.h,
                bottom: 45.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.outlineGray30002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_robbieprosek3".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(right: 38.h),
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 20.v,
              ),
              decoration: AppDecoration.outlineBlack900,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_instagram".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "lbl_facebook".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 14.v),
                  Text(
                    "lbl_ticktock".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 4.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasteLinkToFacebookAccountValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 28.h,
      ),
      child: BlocSelector<AddSocialMediaTwoBloc, AddSocialMediaTwoState,
          TextEditingController?>(
        selector: (state) => state.pasteLinkToFacebookAccountValueController,
        builder: (context, pasteLinkToFacebookAccountValueController) {
          return CustomTextFormField(
            controller: pasteLinkToFacebookAccountValueController,
            hintText: "msg_paste_link_to_facebook".tr,
            hintStyle: CustomTextStyles.bodyLargeBlack900_2,
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
  Widget _buildValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 28.h,
      ),
      child: BlocSelector<AddSocialMediaTwoBloc, AddSocialMediaTwoState,
          TextEditingController?>(
        selector: (state) => state.valueController,
        builder: (context, valueController) {
          return CustomTextFormField(
            controller: valueController,
            hintText: "lbl_78_000".tr,
            textInputAction: TextInputAction.done,
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
  Widget _buildAddNow(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_add_now".tr,
      margin: EdgeInsets.only(right: 6.h),
      buttonTextStyle: CustomTextStyles.titleMediumLexendPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildAddNow1(BuildContext context) {
    return Container(
      width: 390.h,
      margin: EdgeInsets.only(
        left: 22.h,
        right: 16.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineRedA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          _buildAddNow(context),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildUilSnapchatGhost(
    BuildContext context, {
    required String textLabel,
    required String followersLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 36.adaptSize,
          width: 36.adaptSize,
          padding: EdgeInsets.all(8.h),
          decoration: IconButtonStyleHelper.fillPrimary,
          child: CustomImageView(
            imagePath: ImageConstant.imgUilSnapchatGhostPrimarycontainer,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 19.h,
            top: 10.v,
            bottom: 8.v,
          ),
          child: Text(
            textLabel,
            style: CustomTextStyles.bodyMediumLexendPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 9.v,
            bottom: 8.v,
          ),
          child: Text(
            followersLabel,
            style: CustomTextStyles.bodyMediumLexendGray500.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
      ],
    );
  }
}
