import 'bloc/payment_three_bloc.dart';
import 'models/payment_three_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';

class PaymentThreeScreen extends StatelessWidget {
  const PaymentThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentThreeBloc>(
      create: (context) => PaymentThreeBloc(PaymentThreeState(
        paymentThreeModelObj: PaymentThreeModel(),
      ))
        ..add(PaymentThreeInitialEvent()),
      child: PaymentThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PaymentThreeBloc, PaymentThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildOrderSummary(context),
                  SizedBox(height: 2.v),
                  _buildConfirmOrder(context),
                  SizedBox(height: 22.v),
                  _buildRejectOrder(context),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 41.h,
                      right: 22.h,
                    ),
                    child: _buildUserProfile(
                      context,
                      userImage: ImageConstant.imgRectangle2676,
                      userName: "lbl_robbi_prosek".tr,
                      pendingLabel: "lbl_pending".tr,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 41.h,
                      right: 22.h,
                    ),
                    child: _buildUserProfile(
                      context,
                      userImage: ImageConstant.imgRectangle267348x45,
                      userName: "lbl_selina_benzen".tr,
                      pendingLabel: "lbl_pending".tr,
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildOrderSummary(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 28.v),
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
                SizedBox(height: 34.v),
                Padding(
                  padding: EdgeInsets.only(left: 23.h),
                  child: Text(
                    "lbl_order_date".tr,
                    style: CustomTextStyles.titleMediumLexend,
                  ),
                ),
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.only(left: 23.h),
                  child: Text(
                    "lbl_total_price2".tr,
                    style: CustomTextStyles.titleMediumLexend,
                  ),
                ),
                SizedBox(height: 21.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl_delivery_status".tr,
                    style: CustomTextStyles.titleMediumLexend,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 220.v,
            width: 263.h,
            margin: EdgeInsets.only(left: 3.h),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 220.v,
                    width: 214.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse19,
                          height: 220.v,
                          width: 214.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 22.h,
                              bottom: 71.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Opacity(
                                  opacity: 0.8,
                                  child: Text(
                                    "lbl_10_july_2023".tr,
                                    style: CustomTextStyles
                                        .bodyMediumLexendBlack900Light,
                                  ),
                                ),
                                SizedBox(height: 18.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Opacity(
                                    opacity: 0.8,
                                    child: Text(
                                      "lbl_3529".tr,
                                      style: CustomTextStyles
                                          .bodyMediumLexendBlack900Light,
                                    ),
                                  ),
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
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 31.v),
                    child: Text(
                      "lbl_order_status2".tr,
                      style: CustomTextStyles.titleMediumMedium_2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmOrder(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 41.h,
        right: 22.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2674,
            height: 48.v,
            width: 45.h,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          Opacity(
            opacity: 0.8,
            child: Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                top: 16.v,
                bottom: 14.v,
              ),
              child: Text(
                "lbl_tommy_rodberg".tr,
                style: CustomTextStyles.bodyMediumLexendBlack90014_1,
              ),
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 19.v,
            width: 56.h,
            text: "lbl_confirm".tr,
            margin: EdgeInsets.only(
              top: 15.v,
              bottom: 14.v,
            ),
            buttonStyle: CustomButtonStyles.fillGreen,
            buttonTextStyle: theme.textTheme.labelSmall!,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRejectOrder(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 41.h,
        right: 22.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2675,
            height: 48.v,
            width: 45.h,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          Opacity(
            opacity: 0.8,
            child: Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                top: 16.v,
                bottom: 13.v,
              ),
              child: Text(
                "lbl_jesse_rago".tr,
                style: CustomTextStyles.bodyMediumLexendBlack90014_1,
              ),
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 19.v,
            width: 59.h,
            text: "lbl_rejected".tr,
            margin: EdgeInsets.only(
              top: 15.v,
              bottom: 13.v,
            ),
            buttonStyle: CustomButtonStyles.fillRedA,
            buttonTextStyle: theme.textTheme.labelSmall!,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildUserProfile(
    BuildContext context, {
    required String userImage,
    required String userName,
    required String pendingLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 48.v,
          width: 45.h,
          radius: BorderRadius.circular(
            5.h,
          ),
        ),
        Opacity(
          opacity: 0.8,
          child: Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 10.v,
              bottom: 19.v,
            ),
            child: Text(
              userName,
              style: CustomTextStyles.bodyMediumLexendBlack90014_1.copyWith(
                color: appTheme.black900.withOpacity(0.64),
              ),
            ),
          ),
        ),
        Spacer(),
        Container(
          width: 56.h,
          margin: EdgeInsets.only(
            top: 15.v,
            bottom: 14.v,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.fillGray40001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder7,
          ),
          child: Text(
            pendingLabel,
            style: theme.textTheme.labelSmall!.copyWith(
              color: theme.colorScheme.primaryContainer.withOpacity(1),
            ),
          ),
        ),
      ],
    );
  }
}
