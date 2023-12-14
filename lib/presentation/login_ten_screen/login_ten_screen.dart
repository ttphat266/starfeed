import 'bloc/login_ten_bloc.dart';
import 'models/login_ten_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/core/utils/validation_functions.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class LoginTenScreen extends StatelessWidget {
  LoginTenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginTenBloc>(
      create: (context) => LoginTenBloc(LoginTenState(
        loginTenModelObj: LoginTenModel(),
      ))
        ..add(LoginTenInitialEvent()),
      child: LoginTenScreen(),
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
                _buildLoginTenStack(context),
                Spacer(),
                SizedBox(height: 55.v),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse216,
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
  Widget _buildLoginTenStack(BuildContext context) {
    return Container(
      height: 233.v,
      width: 408.h,
      margin: EdgeInsets.only(left: 20.h),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse135,
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
                  left: 112.h,
                  top: 61.v,
                ),
                child: Text(
                  "lbl_forget_password".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Opacity(
              opacity: 0.4,
              child: Container(
                width: 289.h,
                margin: EdgeInsets.only(left: 50.h),
                child: Text(
                  "msg_enter_your_email".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeBlack900Regular,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              bottom: 10.v,
            ),
            child: BlocSelector<LoginTenBloc, LoginTenState,
                TextEditingController?>(
              selector: (state) => state.phoneNumberController,
              builder: (context, phoneNumberController) {
                return CustomTextFormField(
                  width: 374.h,
                  controller: phoneNumberController,
                  hintText: "msg_enter_email_phone2".tr,
                  hintStyle: CustomTextStyles.bodyLargeBlack900,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  alignment: Alignment.bottomLeft,
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
                  borderDecoration: TextFormFieldStyleHelper.outlineGray,
                );
              },
            ),
          ),
          Opacity(
            opacity: 0.6,
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconLinear,
              height: 28.adaptSize,
              width: 28.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 7.h,
                top: 56.v,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 75.v,
              width: 390.h,
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
}
