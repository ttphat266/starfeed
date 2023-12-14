import 'bloc/confirm_order_bloc.dart';
import 'models/confirm_order_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';

class ConfirmOrderScreen extends StatelessWidget {
  const ConfirmOrderScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ConfirmOrderBloc>(
      create: (context) => ConfirmOrderBloc(ConfirmOrderState(
        confirmOrderModelObj: ConfirmOrderModel(),
      ))
        ..add(ConfirmOrderInitialEvent()),
      child: ConfirmOrderScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ConfirmOrderBloc, ConfirmOrderState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildHiconLinearStack(context),
                  SizedBox(height: 19.v),
                  _buildRobbiProsekRow(context),
                  SizedBox(height: 19.v),
                  _buildSelinaBenzenRow(context),
                  SizedBox(height: 51.v),
                  _buildTotalPriceRow(context),
                  SizedBox(height: 5.v),
                  _buildPaymentMethodColumn(context),
                  SizedBox(height: 5.v),
                  _buildMailColumn(context),
                  SizedBox(height: 10.v),
                  _buildNotDeliveredRow(context),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildOrderPlacedButton(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildHiconLinearStack(BuildContext context) {
    return SizedBox(
      height: 235.v,
      width: 410.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse15,
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
                left: 159.h,
                top: 31.v,
              ),
              child: Text(
                "lbl_checkout".tr,
                style: CustomTextStyles.titleMediumMedium_2,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(12.h, 84.v, 34.h, 84.v),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle2673,
                    height: 66.v,
                    width: 62.h,
                    radius: BorderRadius.circular(
                      7.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 7.v,
                      bottom: 12.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.8,
                          child: Text(
                            "lbl_tommy_rodberg".tr,
                            style: CustomTextStyles.titleSmallLexend,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Opacity(
                          opacity: 0.8,
                          child: Text(
                            "lbl_445".tr,
                            style: CustomTextStyles
                                .titleMediumTitilliumWebBlack900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.img001Delete1,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 24.v),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 169.v,
                right: 34.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle267375x62,
                    height: 66.v,
                    width: 62.h,
                    radius: BorderRadius.circular(
                      7.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 6.v,
                      bottom: 13.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.8,
                          child: Text(
                            "lbl_jesse_rago".tr,
                            style: CustomTextStyles.titleSmallLexend,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Opacity(
                          opacity: 0.8,
                          child: Text(
                            "lbl_445".tr,
                            style: CustomTextStyles
                                .titleMediumTitilliumWebBlack900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.img001Delete1,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(
                      top: 22.v,
                      bottom: 26.v,
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
  Widget _buildRobbiProsekRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 34.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle267366x62,
            height: 66.v,
            width: 62.h,
            radius: BorderRadius.circular(
              7.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 5.v,
              bottom: 12.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    "lbl_robbi_prosek".tr,
                    style: CustomTextStyles.titleSmallLexend,
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  "lbl_2500".tr,
                  style: CustomTextStyles.titleMediumTitilliumWeb,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.img001Delete1,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 22.v,
              bottom: 26.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelinaBenzenRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 34.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle26732,
            height: 66.v,
            width: 62.h,
            radius: BorderRadius.circular(
              7.h,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                top: 5.v,
                bottom: 12.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: Text(
                      "lbl_selina_benzen".tr,
                      style: CustomTextStyles.titleSmallLexend,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text(
                          "lbl_500".tr,
                          style: CustomTextStyles.titleMediumTitilliumWeb,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img001Delete1,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        margin: EdgeInsets.only(bottom: 11.v),
                      ),
                    ],
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
  Widget _buildTotalPriceRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.6,
            child: Padding(
              padding: EdgeInsets.only(
                top: 3.v,
                bottom: 4.v,
              ),
              child: Text(
                "lbl_total_price".tr,
                style: CustomTextStyles.titleSmallLexendBlack900,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_3890_00".tr,
                  style: CustomTextStyles.titleLargeTitilliumWebBlack900,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_usd".tr,
                  style: CustomTextStyles.bodySmallInterBlack900_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethodColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineRedA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      child: Text(
                        "lbl_payment_method".tr,
                        style: CustomTextStyles.labelLargeBlack900,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 18.v,
                    width: 20.h,
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle2680,
                  height: 37.v,
                  width: 62.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    top: 3.v,
                    bottom: 4.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_2678".tr,
                        style: CustomTextStyles.labelLargeGray50003,
                      ),
                      SizedBox(height: 4.v),
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          "lbl_april_1_2023".tr,
                          style: CustomTextStyles.labelSmallLexendBlack900,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMailColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              children: [
                Opacity(
                  opacity: 0.6,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMail,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                  ),
                ),
                Opacity(
                  opacity: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "lbl_delivery".tr,
                      style: CustomTextStyles.titleSmallLexendBlack900,
                    ),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgEdit,
                  height: 17.v,
                  width: 20.h,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_email2".tr,
                  style: CustomTextStyles.labelLargeSemiBold,
                ),
                TextSpan(
                  text: "msg_jackson_jacksonrossi_com".tr,
                  style: CustomTextStyles.bodySmallBlack900_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotDeliveredRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Opacity(
            opacity: 0.6,
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "lbl_order_status".tr,
                style: CustomTextStyles.titleSmallLexendBlack900,
              ),
            ),
          ),
          CustomElevatedButton(
            height: 18.v,
            width: 80.h,
            text: "lbl_not_delivered".tr.toUpperCase(),
            buttonStyle: CustomButtonStyles.fillRed,
            buttonTextStyle: CustomTextStyles.labelSmall8,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderPlacedButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_order_placed".tr,
      margin: EdgeInsets.only(
        left: 30.h,
        right: 30.h,
        bottom: 47.v,
      ),
    );
  }
}
