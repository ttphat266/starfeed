import 'bloc/payment_four_bloc.dart';
import 'models/payment_four_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_outlined_button.dart';

class PaymentFourScreen extends StatelessWidget {
  const PaymentFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentFourBloc>(
      create: (context) => PaymentFourBloc(PaymentFourState(
        paymentFourModelObj: PaymentFourModel(),
      ))
        ..add(PaymentFourInitialEvent()),
      child: PaymentFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PaymentFourBloc, PaymentFourState>(
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
                            imagePath: ImageConstant.imgEllipse152,
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
                  SizedBox(height: 45.v),
                  Opacity(
                    opacity: 0.5,
                    child: SizedBox(
                      width: 189.h,
                      child: Text(
                        "msg_your_order_is_deliver_now".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleMediumBlack900,
                      ),
                    ),
                  ),
                  SizedBox(height: 61.v),
                  CustomOutlinedButton(
                    text: "lbl_delivery_again".tr,
                    margin: EdgeInsets.symmetric(horizontal: 27.h),
                    buttonStyle: CustomButtonStyles.outlinePrimary,
                  ),
                  SizedBox(height: 27.v),
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
}
