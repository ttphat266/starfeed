import 'bloc/login_six_bloc.dart';
import 'models/login_six_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_pin_code_text_field.dart';

class LoginSixScreen extends StatelessWidget {
  const LoginSixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginSixBloc>(
      create: (context) => LoginSixBloc(LoginSixState(
        loginSixModelObj: LoginSixModel(),
      ))
        ..add(LoginSixInitialEvent()),
      child: LoginSixScreen(),
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
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 188.v,
                  width: 328.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse12,
                        height: 188.v,
                        width: 197.h,
                        alignment: Alignment.centerRight,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Opacity(
                          opacity: 0.6,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 66.v),
                            child: Text(
                              "msg_enter_verification".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Opacity(
                          opacity: 0.4,
                          child: Container(
                            width: 205.h,
                            margin: EdgeInsets.only(left: 11.h),
                            child: Text(
                              "msg_we_send_code_via".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeBlack900Regular,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 46.h,
                  right: 45.h,
                ),
                child: BlocSelector<LoginSixBloc, LoginSixState,
                    TextEditingController?>(
                  selector: (state) => state.otpController,
                  builder: (context, otpController) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller: otpController,
                      onChanged: (value) {
                        otpController?.text = value;
                      },
                    );
                  },
                ),
              ),
              Spacer(
                flex: 50,
              ),
              CustomElevatedButton(
                text: "lbl_verify_now".tr,
                margin: EdgeInsets.symmetric(horizontal: 27.h),
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle:
                    CustomTextStyles.titleMediumLexendPrimaryContainer,
              ),
              Spacer(
                flex: 49,
              ),
              SizedBox(height: 55.v),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse22,
                height: 220.v,
                width: 151.h,
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
