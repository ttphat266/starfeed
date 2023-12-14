import 'bloc/cart_bloc.dart';
import 'models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_outlined_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => CartBloc(CartState(
        cartModelObj: CartModel(),
      ))
        ..add(CartInitialEvent()),
      child: CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildImageStack(context),
                    SizedBox(height: 26.v),
                    _buildRobbiProsekRow(context),
                    SizedBox(height: 26.v),
                    _buildSelinaBenzenRow(context),
                    SizedBox(height: 41.v),
                    _buildApplyRow(context),
                    SizedBox(height: 54.v),
                    _buildTotalRow(context),
                    SizedBox(height: 48.v),
                    CustomOutlinedButton(
                      height: 59.v,
                      text: "msg_proceed_to_checkout".tr,
                      margin: EdgeInsets.symmetric(horizontal: 23.h),
                      buttonStyle: CustomButtonStyles.outlineRedA,
                      buttonTextStyle: CustomTextStyles
                          .titleMediumLexendPrimaryContainerMedium,
                    ),
                    SizedBox(height: 68.v),
                    _buildSpacerRow(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildImageStack(BuildContext context) {
    return SizedBox(
      height: 273.v,
      width: 410.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1220x214,
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
                left: 179.h,
                top: 31.v,
              ),
              child: Text(
                "lbl_cart".tr,
                style: CustomTextStyles.titleMediumMedium_2,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 90.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle2673,
                    height: 75.v,
                    width: 62.h,
                    radius: BorderRadius.circular(
                      7.h,
                    ),
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Opacity(
                                    opacity: 0.8,
                                    child: Text(
                                      "lbl_tommy_rodberg".tr,
                                      style: CustomTextStyles.titleSmallLexend,
                                    ),
                                  ),
                                  SizedBox(height: 3.v),
                                  Text(
                                    "lbl_89".tr,
                                    style:
                                        CustomTextStyles.labelLargeTitilliumWeb,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 7.v,
                                  bottom: 10.v,
                                ),
                                child: CustomIconButton(
                                  height: 22.adaptSize,
                                  width: 22.adaptSize,
                                  padding: EdgeInsets.all(4.h),
                                  decoration: IconButtonStyleHelper.fillBlack,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgHiconOutline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 9.v),
                          _buildHiconLinear(
                            context,
                            text1: "lbl_5".tr,
                            text2: "lbl_445".tr,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle267375x62,
                    height: 75.v,
                    width: 62.h,
                    radius: BorderRadius.circular(
                      7.h,
                    ),
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
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
                                  Text(
                                    "lbl_89".tr,
                                    style:
                                        CustomTextStyles.labelLargeTitilliumWeb,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 7.v,
                                  bottom: 10.v,
                                ),
                                child: CustomIconButton(
                                  height: 22.adaptSize,
                                  width: 22.adaptSize,
                                  padding: EdgeInsets.all(4.h),
                                  decoration: IconButtonStyleHelper.fillBlack,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgHiconOutline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 9.v),
                          _buildHiconLinear(
                            context,
                            text1: "lbl_5".tr,
                            text2: "lbl_445".tr,
                          ),
                        ],
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
  Widget _buildRobbiProsekRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle26731,
            height: 75.v,
            width: 62.h,
            radius: BorderRadius.circular(
              7.h,
            ),
            margin: EdgeInsets.only(bottom: 3.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
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
                            "lbl_500".tr,
                            style: CustomTextStyles.labelLargeTitilliumWeb,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 9.v,
                          bottom: 10.v,
                        ),
                        child: CustomIconButton(
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          decoration: IconButtonStyleHelper.fillBlack,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHiconOutline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.v),
                  _buildHiconLinear(
                    context,
                    text1: "lbl_5".tr,
                    text2: "lbl_2500".tr,
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
  Widget _buildSelinaBenzenRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle26732,
            height: 75.v,
            width: 62.h,
            radius: BorderRadius.circular(
              7.h,
            ),
            margin: EdgeInsets.only(bottom: 3.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: 0.8,
                            child: Text(
                              "lbl_selina_benzen".tr,
                              style: CustomTextStyles.titleSmallLexend,
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "lbl_100".tr,
                            style: CustomTextStyles.labelLargeTitilliumWeb,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 9.v,
                          bottom: 10.v,
                        ),
                        child: CustomIconButton(
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          decoration: IconButtonStyleHelper.fillBlack,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHiconOutline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.v),
                  _buildHiconLinear(
                    context,
                    text1: "lbl_5".tr,
                    text2: "lbl_500".tr,
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
  Widget _buildApplyRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 29.h),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Opacity(
            opacity: 0.4,
            child: Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 13.v,
                bottom: 12.v,
              ),
              child: Text(
                "lbl_promo_code".tr,
                style: CustomTextStyles.labelLargeInterBlack900Medium,
              ),
            ),
          ),
          CustomElevatedButton(
            height: 40.v,
            width: 93.h,
            text: "lbl_apply".tr,
            margin: EdgeInsets.only(top: 1.v),
            buttonTextStyle: CustomTextStyles.titleSmallLexendPrimaryContainer,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 36.h,
        right: 30.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Opacity(
            opacity: 0.8,
            child: Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text(
                "lbl_total".tr,
                style: CustomTextStyles.titleLargeBlack900SemiBold_1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: RichText(
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSpacerRow(BuildContext context) {
    return Container(
      width: 427.h,
      padding: EdgeInsets.symmetric(
        horizontal: 55.h,
        vertical: 12.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup517,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup602,
            height: 33.v,
            width: 36.h,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 34.v,
              bottom: 13.v,
            ),
          ),
          Spacer(
            flex: 46,
          ),
          Container(
            height: 67.adaptSize,
            width: 67.adaptSize,
            margin: EdgeInsets.only(bottom: 13.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.7,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 67.adaptSize,
                      width: 67.adaptSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          33.h,
                        ),
                        border: Border.all(
                          color: theme.colorScheme.primaryContainer
                              .withOpacity(0.32),
                          width: 1.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0.31, 0.05),
                          end: Alignment(0.69, 0.96),
                          colors: [
                            appTheme.indigoA20099,
                            appTheme.deepPurpleA200.withOpacity(0.6),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgStar1,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 53,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUser2,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(
              top: 34.v,
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildHiconLinear(
    BuildContext context, {
    required String text1,
    required String text2,
  }) {
    return SizedBox(
      width: 294.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 21.v,
            width: 27.h,
            margin: EdgeInsets.only(bottom: 5.v),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillGray700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder3,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconLinearGray5014x14,
              height: 14.adaptSize,
              width: 14.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              bottom: 7.v,
            ),
            child: Text(
              text1,
              style: CustomTextStyles.titleSmallGray700.copyWith(
                color: appTheme.gray700,
              ),
            ),
          ),
          Container(
            height: 21.v,
            width: 27.h,
            margin: EdgeInsets.only(
              left: 10.h,
              bottom: 5.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillGray700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder3,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconLinear14x14,
              height: 14.adaptSize,
              width: 14.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              text2,
              style: CustomTextStyles.titleMediumTitilliumWebBlueA400.copyWith(
                color: appTheme.blueA400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
