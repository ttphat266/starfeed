import 'bloc/payment_one_bloc.dart';
import 'models/payment_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_outlined_button.dart';

class PaymentOneScreen extends StatelessWidget {
  const PaymentOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentOneBloc>(
      create: (context) => PaymentOneBloc(PaymentOneState(
        paymentOneModelObj: PaymentOneModel(),
      ))
        ..add(PaymentOneInitialEvent()),
      child: PaymentOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PaymentOneBloc, PaymentOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 353.v,
                      width: 328.h,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse18,
                            height: 220.v,
                            width: 214.h,
                            alignment: Alignment.topRight,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 227.adaptSize,
                              width: 227.adaptSize,
                              padding: EdgeInsets.only(bottom: 73.v),
                              decoration:
                                  AppDecoration.gradientPrimaryToBlueA.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder113,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCheckmark,
                                height: 70.v,
                                width: 99.h,
                                alignment: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 46.v),
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: 318.h,
                      margin: EdgeInsets.only(
                        left: 55.h,
                        right: 54.h,
                      ),
                      child: Text(
                        "msg_your_order_is_placed".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style:
                            CustomTextStyles.titleMediumLexendBlack900Medium_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 36.v),
                  _buildOrderStatusButton(context),
                  SizedBox(height: 17.v),
                  CustomElevatedButton(
                    text: "msg_back_to_starfish".tr,
                    margin: EdgeInsets.only(
                      left: 27.h,
                      right: 33.h,
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
  Widget _buildOrderStatusButton(BuildContext context) {
    return Container(
      width: 393.h,
      margin: EdgeInsets.only(
        left: 21.h,
        right: 14.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineRedA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          CustomOutlinedButton(
            text: "msg_view_order_status".tr,
            margin: EdgeInsets.only(right: 7.h),
            buttonStyle: CustomButtonStyles.outlinePrimary,
          ),
        ],
      ),
    );
  }
}
