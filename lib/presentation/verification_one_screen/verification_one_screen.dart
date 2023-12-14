import 'bloc/verification_one_bloc.dart';
import 'models/verification_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_pin_code_text_field.dart';

class VerificationOneScreen extends StatelessWidget {
  const VerificationOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VerificationOneBloc>(
      create: (context) => VerificationOneBloc(VerificationOneState(
        verificationOneModelObj: VerificationOneModel(),
      ))
        ..add(VerificationOneInitialEvent()),
      child: VerificationOneScreen(),
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
              _buildHiconLinearColumn(context),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 21.h,
                  right: 17.h,
                ),
                child: BlocSelector<VerificationOneBloc, VerificationOneState,
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
              SizedBox(height: 45.v),
              CustomElevatedButton(
                text: "lbl_verify_now".tr,
                margin: EdgeInsets.symmetric(horizontal: 27.h),
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle:
                    CustomTextStyles.titleMediumLexendPrimaryContainer,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHiconLinearColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 38.v,
              bottom: 174.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.6,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgHiconLinear,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                  ),
                ),
                SizedBox(height: 24.v),
                CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  alignment: Alignment.centerRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgRiFacebookFill,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 221.v,
                    width: 339.h,
                    margin: EdgeInsets.only(left: 5.h),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            height: 215.v,
                            width: 206.h,
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse150,
                                  height: 215.v,
                                  width: 206.h,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 34.h),
                                    child: Text(
                                      "lbl_78k_followers".tr,
                                      style: CustomTextStyles
                                          .bodyMediumLexendGray500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 80.h,
                              top: 40.v,
                            ),
                            child: Text(
                              "lbl_verification".tr,
                              style: CustomTextStyles.titleMediumMedium,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_robbieprosek2".tr,
                            style: CustomTextStyles.bodyMediumLexendPrimary,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Opacity(
                            opacity: 0.6,
                            child: Padding(
                              padding: EdgeInsets.only(left: 11.h),
                              child: Text(
                                "msg_enter_verification".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Opacity(
                    opacity: 0.4,
                    child: SizedBox(
                      width: 262.h,
                      child: Text(
                        "msg_please_check_your".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargeBlack900Regular,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
