import 'bloc/register_one_bloc.dart';
import 'models/register_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/core/utils/validation_functions.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_radio_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class RegisterOneScreen extends StatelessWidget {
  RegisterOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterOneBloc>(
      create: (context) => RegisterOneBloc(RegisterOneState(
        registerOneModelObj: RegisterOneModel(),
      ))
        ..add(RegisterOneInitialEvent()),
      child: RegisterOneScreen(),
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 187.v,
                      width: 336.h,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse134,
                            height: 187.v,
                            width: 197.h,
                            alignment: Alignment.centerRight,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Opacity(
                              opacity: 0.6,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 60.h,
                                  bottom: 51.v,
                                ),
                                child: Text(
                                  "lbl_register".tr,
                                  style: CustomTextStyles.headlineLargeBlack900,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 16.v),
                                child: Text(
                                  "msg_for_your_starfish".tr,
                                  style:
                                      CustomTextStyles.titleLargeLexendBlack900,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 41.v),
                  _buildRegisterOptions(context),
                  SizedBox(height: 34.v),
                  _buildUserNameField(context),
                  SizedBox(height: 16.v),
                  _buildPhoneField(context),
                  SizedBox(height: 16.v),
                  _buildPasswordField(context),
                  SizedBox(height: 16.v),
                  _buildConfirmPasswordField(context),
                  SizedBox(height: 30.v),
                  _buildRegisterButton(context),
                  SizedBox(height: 11.v),
                  _buildSocialMediaIcons(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegisterOptions(BuildContext context) {
    return BlocBuilder<RegisterOneBloc, RegisterOneState>(
      builder: (context, state) {
        return state.registerOneModelObj!.radioList.isNotEmpty
            ? Row(
                children: [
                  CustomRadioButton(
                    text: "lbl_influencer".tr,
                    value: state.registerOneModelObj?.radioList[0] ?? "",
                    groupValue: state.radioGroup,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    onChange: (value) {
                      context
                          .read<RegisterOneBloc>()
                          .add(ChangeRadioButtonEvent(value: value));
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: CustomRadioButton(
                      text: "lbl_business".tr,
                      value: state.registerOneModelObj?.radioList[1] ?? "",
                      groupValue: state.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      textStyle: CustomTextStyles.bodyLargeBlack900_1,
                      onChange: (value) {
                        context
                            .read<RegisterOneBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                ],
              )
            : Container();
      },
    );
  }

  /// Section Widget
  Widget _buildUserNameField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: BlocSelector<RegisterOneBloc, RegisterOneState,
          TextEditingController?>(
        selector: (state) => state.userNameFieldController,
        builder: (context, userNameFieldController) {
          return CustomTextFormField(
            controller: userNameFieldController,
            hintText: "lbl_enter_username".tr,
            hintStyle: CustomTextStyles.bodyLargeBlack900,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 17.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: BlocSelector<RegisterOneBloc, RegisterOneState,
          TextEditingController?>(
        selector: (state) => state.phoneFieldController,
        builder: (context, phoneFieldController) {
          return CustomTextFormField(
            controller: phoneFieldController,
            hintText: "msg_enter_email_phone".tr,
            hintStyle: CustomTextStyles.bodyLargeBlack900,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 17.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: BlocBuilder<RegisterOneBloc, RegisterOneState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordFieldController,
            hintText: "lbl_enter_password".tr,
            hintStyle: CustomTextStyles.bodyLargeBlack900,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                context.read<RegisterOneBloc>().add(
                    ChangePasswordVisibilityEvent(
                        value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(12.h, 18.v, 13.h, 13.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgHiconLinearHide,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 55.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: BlocBuilder<RegisterOneBloc, RegisterOneState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.confirmPasswordFieldController,
            hintText: "msg_confirm_password".tr,
            hintStyle: CustomTextStyles.bodyLargeBlack900,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                context.read<RegisterOneBloc>().add(
                    ChangePasswordVisibilityEvent1(
                        value: !state.isShowPassword1));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 18.v, 13.h, 13.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgHiconLinearHide,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 55.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword1,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.redA700,
          width: 3.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 55.v,
        width: 374.h,
        decoration: AppDecoration.outlineRedA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 55.v,
                width: 374.h,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    7.h,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 14.v),
                child: Text(
                  "lbl_register".tr,
                  style: CustomTextStyles.titleMediumLexendPrimaryContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSocialMediaIcons(BuildContext context) {
    return SizedBox(
      height: 283.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: 220.v,
              width: 151.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse215,
                    height: 220.v,
                    width: 151.h,
                    alignment: Alignment.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 75.v,
                      right: 12.h,
                    ),
                    child: CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLogosGoogleIcon,
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
              padding: EdgeInsets.only(top: 22.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 7.v,
                      bottom: 6.v,
                    ),
                    child: SizedBox(
                      width: 122.h,
                      child: Divider(
                        color: appTheme.black900.withOpacity(0.2),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Text(
                      "msg_or_continue_with".tr,
                      style: CustomTextStyles.labelLargeSFProTextBlack900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 7.v,
                      bottom: 6.v,
                    ),
                    child: SizedBox(
                      width: 138.h,
                      child: Divider(
                        color: appTheme.black900.withOpacity(0.2),
                        indent: 16.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 75.v,
                right: 103.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomIconButton(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIcOutlineApple,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLogosFacebook,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 117.v),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_already_have_an2".tr,
                      style: CustomTextStyles.bodySmallBlack90012,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "lbl_log_in".tr,
                      style: CustomTextStyles.labelLargePrimary,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup580,
            height: 140.v,
            width: 428.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
