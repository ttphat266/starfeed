import 'bloc/add_social_media_one_bloc.dart';
import 'models/add_social_media_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/core/utils/validation_functions.dart';
import 'package:phat_s_application1/widgets/custom_outlined_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class AddSocialMediaOneScreen extends StatelessWidget {
  AddSocialMediaOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddSocialMediaOneBloc>(
      create: (context) => AddSocialMediaOneBloc(AddSocialMediaOneState(
        addSocialMediaOneModelObj: AddSocialMediaOneModel(),
      ))
        ..add(AddSocialMediaOneInitialEvent()),
      child: AddSocialMediaOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildHiconLinearLeftThree(context),
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
                _buildPastelinkToFacebookAccountEditText(context),
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
                _buildFollowersNumberEditText(context),
                SizedBox(height: 41.v),
                _buildAddNowButton(context),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildHiconLinearLeftThreeEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        bottom: 72.v,
      ),
      child: BlocSelector<AddSocialMediaOneBloc, AddSocialMediaOneState,
          TextEditingController?>(
        selector: (state) => state.hiconLinearLeftThreeEditTextController,
        builder: (context, hiconLinearLeftThreeEditTextController) {
          return CustomTextFormField(
            width: 374.h,
            controller: hiconLinearLeftThreeEditTextController,
            hintText: "lbl_add".tr,
            hintStyle: CustomTextStyles.bodyLargeBlack900_2,
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
  Widget _buildAddressEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 28.h),
      child: BlocSelector<AddSocialMediaOneBloc, AddSocialMediaOneState,
          TextEditingController?>(
        selector: (state) => state.addressEditTextController,
        builder: (context, addressEditTextController) {
          return CustomTextFormField(
            width: 235.h,
            controller: addressEditTextController,
            hintText: "lbl_address".tr,
            hintStyle: CustomTextStyles.bodyLargeBlack900_2,
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
  Widget _buildHiconLinearLeftThree(BuildContext context) {
    return SizedBox(
      height: 251.v,
      width: 412.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse147,
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
          _buildHiconLinearLeftThreeEditText(context),
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
          _buildAddressEditText(context),
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
  Widget _buildPastelinkToFacebookAccountEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 28.h,
      ),
      child: BlocSelector<AddSocialMediaOneBloc, AddSocialMediaOneState,
          TextEditingController?>(
        selector: (state) => state.pastelinkToFacebookAccountEditTextController,
        builder: (context, pastelinkToFacebookAccountEditTextController) {
          return CustomTextFormField(
            controller: pastelinkToFacebookAccountEditTextController,
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
  Widget _buildFollowersNumberEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 28.h,
      ),
      child: BlocSelector<AddSocialMediaOneBloc, AddSocialMediaOneState,
          TextEditingController?>(
        selector: (state) => state.followersNumberEditTextController,
        builder: (context, followersNumberEditTextController) {
          return CustomTextFormField(
            controller: followersNumberEditTextController,
            hintText: "msg_followers_number".tr,
            hintStyle: CustomTextStyles.bodyLargeBlack900_2,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.number,
            validator: (value) {
              if (!isNumeric(value)) {
                return "err_msg_please_enter_valid_number".tr;
              }
              return null;
            },
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
    return CustomOutlinedButton(
      text: "lbl_add_now".tr,
      margin: EdgeInsets.only(
        left: 25.h,
        right: 27.h,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimary,
    );
  }
}
