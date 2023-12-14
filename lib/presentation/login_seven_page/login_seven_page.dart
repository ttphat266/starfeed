import 'bloc/login_seven_bloc.dart';
import 'models/login_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/core/utils/validation_functions.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginSevenPage extends StatefulWidget {
  const LoginSevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  LoginSevenPageState createState() => LoginSevenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginSevenBloc>(
      create: (context) => LoginSevenBloc(LoginSevenState(
        loginSevenModelObj: LoginSevenModel(),
      ))
        ..add(LoginSevenInitialEvent()),
      child: LoginSevenPage(),
    );
  }
}

class LoginSevenPageState extends State<LoginSevenPage>
    with AutomaticKeepAliveClientMixin<LoginSevenPage> {
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
            child: Padding(
              padding: EdgeInsets.only(top: 218.v),
              child: Column(
                children: [
                  SizedBox(height: 52.v),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.h),
                        child: BlocSelector<LoginSevenBloc, LoginSevenState,
                            TextEditingController?>(
                          selector: (state) => state.emailController,
                          builder: (context, emailController) {
                            return CustomTextFormField(
                              controller: emailController,
                              hintText: "lbl_enter_email".tr,
                              hintStyle: CustomTextStyles.bodyLargeBlack900,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "err_msg_please_enter_valid_email".tr;
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
                        child: BlocBuilder<LoginSevenBloc, LoginSevenState>(
                          builder: (context, state) {
                            return CustomTextFormField(
                              controller: state.passwordController,
                              hintText: "lbl_enter_password".tr,
                              hintStyle: CustomTextStyles.bodyLargeBlack900,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                onTap: () {
                                  context.read<LoginSevenBloc>().add(
                                      ChangePasswordVisibilityEvent(
                                          value: !state.isShowPassword));
                                },
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      12.h, 18.v, 13.h, 13.v),
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
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
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
                      SizedBox(height: 9.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsets.only(right: 27.h),
                            child: Text(
                              "msg_forgot_password".tr,
                              style: CustomTextStyles.bodyMediumLexendBlack900,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 28.v),
                      _buildLoginSection(context),
                      SizedBox(height: 53.v),
                      _buildSeparatorSection(context),
                      SizedBox(height: 41.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgLogosGoogleIcon,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: CustomIconButton(
                              height: 36.adaptSize,
                              width: 36.adaptSize,
                              padding: EdgeInsets.all(4.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgIcOutlineApple,
                              ),
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
                      SizedBox(height: 38.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup580,
                        height: 140.v,
                        width: 428.h,
                      ),
                      RichText(
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
                    ],
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
  Widget _buildLoginSection(BuildContext context) {
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
                padding: EdgeInsets.only(bottom: 13.v),
                child: Text(
                  "lbl_log_in".tr,
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
  Widget _buildSeparatorSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
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
    );
  }
}
