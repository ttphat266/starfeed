import 'bloc/login_one_bloc.dart';
import 'models/login_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/core/utils/validation_functions.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginOnePage extends StatefulWidget {
  const LoginOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  LoginOnePageState createState() => LoginOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginOneBloc>(
      create: (context) => LoginOneBloc(LoginOneState(
        loginOneModelObj: LoginOneModel(),
      ))
        ..add(LoginOneInitialEvent()),
      child: LoginOnePage(),
    );
  }
}

class LoginOnePageState extends State<LoginOnePage>
    with AutomaticKeepAliveClientMixin<LoginOnePage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 52.v),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 27.h),
                      child: BlocSelector<LoginOneBloc, LoginOneState,
                          TextEditingController?>(
                        selector: (state) => state.phoneNumberController,
                        builder: (context, phoneNumberController) {
                          return CustomTextFormField(
                            controller: phoneNumberController,
                            hintText: "msg_enter_phone_number".tr,
                            hintStyle: CustomTextStyles.bodyLargeBlack900,
                            textInputType: TextInputType.phone,
                            validator: (value) {
                              if (!isValidPhone(value)) {
                                return "err_msg_please_enter_valid_phone_number"
                                    .tr;
                              }
                              return null;
                            },
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.h,
                              vertical: 17.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineGray,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 27.h),
                      child: BlocBuilder<LoginOneBloc, LoginOneState>(
                        builder: (context, state) {
                          return CustomTextFormField(
                            controller: state.passwordController,
                            hintText: "lbl_enter_password".tr,
                            hintStyle: CustomTextStyles.bodyLargeBlack900,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                              onTap: () {
                                context.read<LoginOneBloc>().add(
                                    ChangePasswordVisibilityEvent(
                                        value: !state.isShowPassword));
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(12.h, 18.v, 13.h, 13.v),
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
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineGray,
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 269.h,
                          right: 21.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 4.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.outlineRedA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 7.v),
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                "msg_forgot_password".tr,
                                style:
                                    CustomTextStyles.bodyMediumLexendBlack900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12.v),
                    _buildLoginStack(context),
                    SizedBox(height: 42.v),
                    _buildGoogleIconStack(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginStack(BuildContext context) {
    return SizedBox(
      height: 55.v,
      width: 375.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 1.h),
              padding: EdgeInsets.symmetric(
                horizontal: 157.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.fillPrimary1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_log_in".tr,
                    style: CustomTextStyles.titleMediumLexendPrimaryContainer,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 55.v,
              width: 374.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
                border: Border.all(
                  color: appTheme.redA700,
                  width: 3.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogleIconStack(BuildContext context) {
    return SizedBox(
      height: 282.v,
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
                    imagePath: ImageConstant.imgEllipse2,
                    height: 220.v,
                    width: 151.h,
                    alignment: Alignment.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 68.v,
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
              padding: EdgeInsets.only(top: 11.v),
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
                top: 68.v,
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
              padding: EdgeInsets.only(bottom: 116.v),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_don_t_have_an_account2".tr,
                      style: CustomTextStyles.bodySmallBlack90012,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "lbl_register".tr,
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
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 38.v,
              width: 62.h,
              margin: EdgeInsets.only(
                right: 110.h,
                bottom: 107.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  19.h,
                ),
                border: Border.all(
                  color: appTheme.redA700,
                  width: 2.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
