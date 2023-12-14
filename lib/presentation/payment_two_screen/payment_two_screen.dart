import 'bloc/payment_two_bloc.dart';
import 'models/payment_two_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_checkbox_button.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class PaymentTwoScreen extends StatelessWidget {
  const PaymentTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentTwoBloc>(
      create: (context) => PaymentTwoBloc(PaymentTwoState(
        paymentTwoModelObj: PaymentTwoModel(),
      ))
        ..add(PaymentTwoInitialEvent()),
      child: PaymentTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildPaymentStack(context),
              SizedBox(height: 8.v),
              _buildExpiryDateRow(context),
              SizedBox(height: 35.v),
              _buildSaveCardDetailsCheckbox(context),
              Spacer(
                flex: 63,
              ),
              CustomElevatedButton(
                text: "lbl_payment".tr,
                margin: EdgeInsets.symmetric(horizontal: 30.h),
              ),
              Spacer(
                flex: 36,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentStack(BuildContext context) {
    return SizedBox(
      height: 327.v,
      width: 410.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse17,
            height: 220.v,
            width: 214.h,
            alignment: Alignment.topRight,
          ),
          Opacity(
            opacity: 0.6,
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconLinear,
              height: 28.adaptSize,
              width: 28.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 28.v),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 131.h,
                top: 32.v,
              ),
              child: Text(
                "lbl_payment_method".tr,
                style: CustomTextStyles.titleMediumMedium_2,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(9.h, 114.v, 27.h, 135.v),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle2680,
                    height: 37.v,
                    width: 62.h,
                    radius: BorderRadius.circular(
                      5.h,
                    ),
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        top: 8.v,
                        bottom: 11.v,
                      ),
                      child: Text(
                        "lbl_paypal".tr,
                        style: CustomTextStyles.titleMediumLexendBlack900,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 18.v,
                    width: 20.h,
                    margin: EdgeInsets.only(bottom: 22.v),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                left: 9.h,
                bottom: 36.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 6.v),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      "msg_1234_5678_9674".tr,
                      style: CustomTextStyles.titleMediumLexendBlack900Medium_2,
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
                left: 9.h,
                top: 90.v,
              ),
              child: Text(
                "msg_select_payment_method".tr,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                bottom: 99.v,
              ),
              child: Text(
                "lbl_card_number".tr,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Text(
                "lbl_expiry_date".tr,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 141.h),
              child: Text(
                "lbl_cvv_cvc".tr,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(
                right: 40.h,
                bottom: 14.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.outlineBlack900,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFlag,
                          height: 22.v,
                          width: 29.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text(
                            "lbl_master_card".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLogosVisa,
                        height: 12.v,
                        width: 38.h,
                        margin: EdgeInsets.symmetric(vertical: 3.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: Text(
                          "lbl_visa_card".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle2737,
                          height: 22.v,
                          width: 38.h,
                          radius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 11.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "lbl_paypal".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 22.h),
                      child: Text(
                        "lbl_add_other".tr,
                        style: theme.textTheme.bodyLarge,
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

  /// Section Widget
  Widget _buildExpiryDateRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: BlocSelector<PaymentTwoBloc, PaymentTwoState,
                  TextEditingController?>(
                selector: (state) => state.expirydateController,
                builder: (context, expirydateController) {
                  return CustomTextFormField(
                    controller: expirydateController,
                    hintText: "lbl_mm_yy".tr,
                    hintStyle:
                        CustomTextStyles.titleMediumLexendBlack900Medium_3,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 17.v,
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: BlocSelector<PaymentTwoBloc, PaymentTwoState,
                  TextEditingController?>(
                selector: (state) => state.cvvController,
                builder: (context, cvvController) {
                  return CustomTextFormField(
                    controller: cvvController,
                    hintText: "lbl_321".tr,
                    hintStyle:
                        CustomTextStyles.titleMediumLexendBlack900Medium_2,
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 17.v,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveCardDetailsCheckbox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 29.h),
        child: BlocSelector<PaymentTwoBloc, PaymentTwoState, bool?>(
          selector: (state) => state.saveCardDetailsCheckbox,
          builder: (context, saveCardDetailsCheckbox) {
            return CustomCheckboxButton(
              alignment: Alignment.centerLeft,
              text: "msg_save_card_details".tr,
              value: saveCardDetailsCheckbox,
              onChange: (value) {
                context
                    .read<PaymentTwoBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              },
            );
          },
        ),
      ),
    );
  }
}
