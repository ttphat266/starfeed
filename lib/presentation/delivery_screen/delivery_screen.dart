import 'bloc/delivery_bloc.dart';
import 'models/delivery_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_outlined_button.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DeliveryBloc>(
      create: (context) => DeliveryBloc(DeliveryState(
        deliveryModelObj: DeliveryModel(),
      ))
        ..add(DeliveryInitialEvent()),
      child: DeliveryScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<DeliveryBloc, DeliveryState>(
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
                            imagePath: ImageConstant.imgEllipse118,
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
                      width: 216.h,
                      child: Text(
                        "msg_congratulations_your".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleMediumBlack900,
                      ),
                    ),
                  ),
                  SizedBox(height: 64.v),
                  CustomOutlinedButton(
                    text: "msg_share_your_review".tr,
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
