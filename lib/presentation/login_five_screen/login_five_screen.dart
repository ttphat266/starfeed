import 'bloc/login_five_bloc.dart';
import 'models/login_five_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/core/utils/validation_functions.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class LoginFiveScreen extends StatelessWidget {
  LoginFiveScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginFiveBloc>(
      create: (context) => LoginFiveBloc(LoginFiveState(
        loginFiveModelObj: LoginFiveModel(),
      ))
        ..add(LoginFiveInitialEvent()),
      child: LoginFiveScreen(),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildNewPasswordSection(context),
                Spacer(),
                SizedBox(height: 55.v),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse24,
                  height: 220.v,
                  width: 151.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPasswordSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 293.v,
        width: 401.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse14,
              height: 188.v,
              width: 197.h,
              alignment: Alignment.topRight,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Opacity(
                opacity: 0.6,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 105.h,
                    top: 59.v,
                  ),
                  child: Text(
                    "lbl_reset_password".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Opacity(
                opacity: 0.4,
                child: Container(
                  width: 290.h,
                  margin: EdgeInsets.only(
                    left: 42.h,
                    top: 101.v,
                  ),
                  child: Text(
                    "msg_enter_a_new_password".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyLargeBlack900Regular,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BlocBuilder<LoginFiveBloc, LoginFiveState>(
                    builder: (context, state) {
                      return CustomTextFormField(
                        controller: state.newpasswordController,
                        hintText: "msg_enter_new_password".tr,
                        hintStyle: CustomTextStyles.bodyLargeBlack900,
                        textInputType: TextInputType.visiblePassword,
                        suffix: InkWell(
                          onTap: () {
                            context.read<LoginFiveBloc>().add(
                                ChangePasswordVisibilityEvent(
                                    value: !state.isShowPassword));
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(12.h, 16.v, 19.h, 15.v),
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
                        borderDecoration: TextFormFieldStyleHelper.outlineGray,
                      );
                    },
                  ),
                  SizedBox(height: 15.v),
                  BlocBuilder<LoginFiveBloc, LoginFiveState>(
                    builder: (context, state) {
                      return CustomTextFormField(
                        controller: state.confirmpasswordController,
                        hintText: "msg_confirm_password".tr,
                        hintStyle: CustomTextStyles.bodyLargeBlack900,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        suffix: InkWell(
                          onTap: () {
                            context.read<LoginFiveBloc>().add(
                                ChangePasswordVisibilityEvent1(
                                    value: !state.isShowPassword1));
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 16.v, 19.h, 15.v),
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
                        borderDecoration: TextFormFieldStyleHelper.outlineGray,
                      );
                    },
                  ),
                ],
              ),
            ),
            Opacity(
              opacity: 0.6,
              child: CustomImageView(
                imagePath: ImageConstant.imgHiconLinear,
                height: 28.adaptSize,
                width: 28.adaptSize,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 56.v),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
