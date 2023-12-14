import 'bloc/payment_bloc.dart';
import 'models/payment_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_checkbox_button.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentBloc>(
      create: (context) => PaymentBloc(PaymentState(
        paymentModelObj: PaymentModel(),
      ))
        ..add(PaymentInitialEvent()),
      child: PaymentScreen(),
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
              SizedBox(height: 9.v),
              _buildCardNumberEditText(context),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: Row(
                    children: [
                      Text(
                        "lbl_expiry_date".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 130.h),
                        child: Text(
                          "lbl_cvv_cvc".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              _buildExpiryDateRow(context),
              SizedBox(height: 35.v),
              _buildSaveCardDetailsCheckBox(context),
              Spacer(
                flex: 63,
              ),
              _buildPaymentColumn(context),
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
      height: 227.v,
      width: 410.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse16,
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
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(9.h, 114.v, 27.h, 35.v),
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle2680,
                    height: 37.v,
                    width: 62.h,
                    radius: BorderRadius.circular(
                      5.h,
                    ),
                    margin: EdgeInsets.only(
                      left: 7.h,
                      top: 8.v,
                      bottom: 11.v,
                    ),
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        top: 16.v,
                        bottom: 19.v,
                      ),
                      child: Text(
                        "lbl_paypal".tr,
                        style: CustomTextStyles.titleMediumLexendBlack900,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    margin: EdgeInsets.only(bottom: 22.v),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 18.v,
                          width: 20.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 6.h),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                5.h,
                              ),
                              border: Border.all(
                                color: appTheme.redA700,
                                width: 2.h,
                                strokeAlign: strokeAlignOutside,
                              ),
                            ),
                          ),
                        ),
                      ],
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
              padding: EdgeInsets.only(left: 9.h),
              child: Text(
                "lbl_card_number".tr,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumberEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: BlocSelector<PaymentBloc, PaymentState, TextEditingController?>(
        selector: (state) => state.cardNumberEditTextController,
        builder: (context, cardNumberEditTextController) {
          return CustomTextFormField(
            controller: cardNumberEditTextController,
            hintText: "msg_1234_5678_9674".tr,
            hintStyle: CustomTextStyles.titleMediumLexendBlack900Medium_2,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 17.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildExpirydate(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 16.h),
        child: BlocSelector<PaymentBloc, PaymentState, TextEditingController?>(
          selector: (state) => state.expirydateController,
          builder: (context, expirydateController) {
            return CustomTextFormField(
              controller: expirydateController,
              hintText: "lbl_mm_yy".tr,
              hintStyle: CustomTextStyles.titleMediumLexendBlack900Medium_3,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 17.v,
              ),
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCvv(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: BlocSelector<PaymentBloc, PaymentState, TextEditingController?>(
          selector: (state) => state.cvvController,
          builder: (context, cvvController) {
            return CustomTextFormField(
              controller: cvvController,
              hintText: "lbl_321".tr,
              hintStyle: CustomTextStyles.titleMediumLexendBlack900Medium_2,
              textInputAction: TextInputAction.done,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 17.v,
              ),
            );
          },
        ),
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
          _buildExpirydate(context),
          _buildCvv(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveCardDetailsCheckBox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 27.h),
        child: BlocSelector<PaymentBloc, PaymentState, bool?>(
          selector: (state) => state.saveCardDetailsCheckBox,
          builder: (context, saveCardDetailsCheckBox) {
            return CustomCheckboxButton(
              alignment: Alignment.centerLeft,
              text: "msg_save_card_details".tr,
              value: saveCardDetailsCheckBox,
              onChange: (value) {
                context
                    .read<PaymentBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPayment(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_payment".tr,
    );
  }

  /// Section Widget
  Widget _buildPaymentColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 23.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      decoration: AppDecoration.outlineRedA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: _buildPayment(context),
    );
  }
}
