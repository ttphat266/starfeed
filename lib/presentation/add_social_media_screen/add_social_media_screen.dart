import 'bloc/add_social_media_bloc.dart';
import 'models/add_social_media_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class AddSocialMediaScreen extends StatelessWidget {
  const AddSocialMediaScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AddSocialMediaBloc>(
      create: (context) => AddSocialMediaBloc(AddSocialMediaState(
        addSocialMediaModelObj: AddSocialMediaModel(),
      ))
        ..add(AddSocialMediaInitialEvent()),
      child: AddSocialMediaScreen(),
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
              _buildFacebookvalue(context),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Text(
                    "lbl_add_link".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              _buildPasteLinkToFacebookAccountValueEditText(context),
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
              _buildValueEditText(context),
              SizedBox(height: 41.v),
              _buildAddNowButton(context),
              SizedBox(height: 49.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 33.h),
                child: _buildUilSnapchatGhostRow(
                  context,
                  textLabel: "lbl_robbieprosek2".tr,
                  followersLabel: "lbl_78k_followers".tr,
                ),
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 33.h),
                child: _buildUilSnapchatGhostRow(
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
  Widget _buildFacebookValueEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        bottom: 72.v,
      ),
      child: BlocSelector<AddSocialMediaBloc, AddSocialMediaState,
          TextEditingController?>(
        selector: (state) => state.facebookValueEditTextController,
        builder: (context, facebookValueEditTextController) {
          return CustomTextFormField(
            width: 374.h,
            controller: facebookValueEditTextController,
            hintText: "lbl_facebook".tr,
            alignment: Alignment.bottomLeft,
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
  Widget _buildRobbieProsekValueEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 28.h),
      child: BlocSelector<AddSocialMediaBloc, AddSocialMediaState,
          TextEditingController?>(
        selector: (state) => state.robbieProsekValueEditTextController,
        builder: (context, robbieProsekValueEditTextController) {
          return CustomTextFormField(
            width: 235.h,
            controller: robbieProsekValueEditTextController,
            hintText: "lbl_robbieprosek3".tr,
            alignment: Alignment.bottomRight,
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
  Widget _buildFacebookvalue(BuildContext context) {
    return SizedBox(
      height: 251.v,
      width: 412.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse148,
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
          _buildFacebookValueEditText(context),
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
          _buildRobbieProsekValueEditText(context),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                bottom: 16.v,
              ),
              child: Text(
                "lbl_enter_username".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasteLinkToFacebookAccountValueEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 28.h,
      ),
      child: BlocSelector<AddSocialMediaBloc, AddSocialMediaState,
          TextEditingController?>(
        selector: (state) =>
            state.pasteLinkToFacebookAccountValueEditTextController,
        builder: (context, pasteLinkToFacebookAccountValueEditTextController) {
          return CustomTextFormField(
            controller: pasteLinkToFacebookAccountValueEditTextController,
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
  Widget _buildValueEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 28.h,
      ),
      child: BlocSelector<AddSocialMediaBloc, AddSocialMediaState,
          TextEditingController?>(
        selector: (state) => state.valueEditTextController,
        builder: (context, valueEditTextController) {
          return CustomTextFormField(
            controller: valueEditTextController,
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
  Widget _buildAddNowButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_add_now".tr,
      margin: EdgeInsets.only(
        left: 25.h,
        right: 27.h,
      ),
      buttonTextStyle: CustomTextStyles.titleMediumLexendPrimaryContainer,
    );
  }

  /// Common widget
  Widget _buildUilSnapchatGhostRow(
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
