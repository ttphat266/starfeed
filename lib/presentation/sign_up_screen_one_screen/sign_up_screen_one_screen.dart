import 'bloc/sign_up_screen_one_bloc.dart';
import 'models/sign_up_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';

class SignUpScreenOneScreen extends StatelessWidget {
  const SignUpScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpScreenOneBloc>(
      create: (context) => SignUpScreenOneBloc(SignUpScreenOneState(
        signUpScreenOneModelObj: SignUpScreenOneModel(),
      ))
        ..add(SignUpScreenOneInitialEvent()),
      child: SignUpScreenOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SignUpScreenOneBloc, SignUpScreenOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: mediaQueryData.size.height,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 707.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: appTheme.deepPurpleA10001,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 220.adaptSize,
                          width: 220.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.purpleA100,
                            borderRadius: BorderRadius.circular(
                              110.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse133,
                        height: 220.v,
                        width: 214.h,
                        alignment: Alignment.topRight,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgHomeScreenImage,
                        height: 467.v,
                        width: 428.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 149.v),
                      ),
                      _buildLoginStack(context),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 24.h,
                            bottom: 107.v,
                          ),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 132.v,
                                width: 182.h,
                                padding: EdgeInsets.symmetric(horizontal: 21.h),
                                decoration: AppDecoration.fillGray5003.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL15,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgRectangle2754,
                                  height: 132.v,
                                  width: 129.h,
                                  alignment: Alignment.centerRight,
                                ),
                              ),
                              SizedBox(height: 14.v),
                              Opacity(
                                opacity: 0.8,
                                child: SizedBox(
                                  width: 129.h,
                                  child: Text(
                                    "msg_brand_seeking_influential".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                        CustomTextStyles.labelMediumBlack90011,
                                  ),
                                ),
                              ),
                              SizedBox(height: 12.v),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.only(
                            right: 24.h,
                            bottom: 107.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 9.v,
                          ),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 136.v),
                              Opacity(
                                opacity: 0.8,
                                child: SizedBox(
                                  width: 155.h,
                                  child: Text(
                                    "msg_creator_seeking".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                        CustomTextStyles.labelMediumBlack90011,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle2726,
                        height: 133.v,
                        width: 182.h,
                        radius: BorderRadius.vertical(
                          top: Radius.circular(15.h),
                        ),
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                          right: 24.h,
                          bottom: 161.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLoginStack(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 671.v),
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 26.v,
        ),
        decoration: AppDecoration.fillPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 40.v,
              width: 53.h,
              margin: EdgeInsets.only(top: 163.v),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.v),
                      child: Text(
                        "lbl_log_in".tr,
                        style: CustomTextStyles.titleSmallPrimary_1,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 40.v,
                      width: 53.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15.h,
                        ),
                        border: Border.all(
                          color: appTheme.redA700,
                          width: 1.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 175.v,
                right: 6.h,
                bottom: 10.v,
              ),
              child: Text(
                "lbl_skip".tr,
                style: CustomTextStyles.titleSmallPrimary_1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
