import 'bloc/my_earnings_bloc.dart';
import 'models/my_earnings_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';

class MyEarningsScreen extends StatelessWidget {
  const MyEarningsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyEarningsBloc>(
      create: (context) => MyEarningsBloc(MyEarningsState(
        myEarningsModelObj: MyEarningsModel(),
      ))
        ..add(MyEarningsInitialEvent()),
      child: MyEarningsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MyEarningsBloc, MyEarningsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildRecentOrders(context),
                  Divider(),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      right: 20.h,
                    ),
                    child: _buildClientTestimonials(
                      context,
                      nameHere: "lbl_johnathon_doe".tr,
                      photoPost: "lbl_1_photo_post".tr,
                      price: "lbl_450".tr,
                      completed: "msg_completed_5_1_23".tr,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Divider(),
                  SizedBox(height: 14.v),
                  _buildUserProfile(context),
                  SizedBox(height: 18.v),
                  Divider(),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      right: 20.h,
                    ),
                    child: _buildClientTestimonials(
                      context,
                      nameHere: "lbl_name_here".tr,
                      photoPost: "lbl_1_photo_post".tr,
                      price: "lbl_450".tr,
                      completed: "msg_completed_5_1_23".tr,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Divider(),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      right: 20.h,
                    ),
                    child: _buildClientTestimonials(
                      context,
                      nameHere: "lbl_name_here".tr,
                      photoPost: "lbl_1_photo_post".tr,
                      price: "lbl_450".tr,
                      completed: "msg_completed_5_1_23".tr,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Divider(),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      right: 20.h,
                    ),
                    child: _buildClientTestimonials(
                      context,
                      nameHere: "lbl_name_here".tr,
                      photoPost: "lbl_1_photo_post".tr,
                      price: "lbl_450".tr,
                      completed: "msg_completed_5_1_23".tr,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Divider(),
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
  Widget _buildRecentOrders(BuildContext context) {
    return SizedBox(
      height: 223.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
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
                    imagePath: ImageConstant.imgEllipse139,
                    height: 220.v,
                    width: 214.h,
                    alignment: Alignment.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15.h,
                      bottom: 61.v,
                    ),
                    child: _buildLifetimeEarnings(
                      context,
                      price: "lbl_5".tr,
                      lifetimeEarnings: "lbl_jobs_complete".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              bottom: 64.v,
            ),
            child: _buildLifetimeEarnings(
              context,
              price: "lbl_2_250".tr,
              lifetimeEarnings: "msg_lifetime_earnings".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 151.h,
              right: 151.h,
              bottom: 64.v,
            ),
            child: _buildLifetimeEarnings(
              context,
              price: "lbl_450".tr,
              lifetimeEarnings: "msg_earning_this_month".tr,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 38.v),
              child: Text(
                "lbl_my_earnings".tr,
                style: CustomTextStyles.titleMediumMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 38.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillGray200,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Opacity(
                    opacity: 0.8,
                    child: Text(
                      "lbl_job_history".tr,
                      style: CustomTextStyles.titleMediumBlack900_2,
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
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: CustomIconButton(
              height: 54.adaptSize,
              width: 54.adaptSize,
              padding: EdgeInsets.all(15.h),
              decoration: IconButtonStyleHelper.gradientIndigoAToDeepPurpleA,
              child: CustomImageView(
                imagePath: ImageConstant.imgIcPhoto,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 25.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_name_here".tr,
                    style: CustomTextStyles.titleSmallBlack900_1,
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "lbl_1_photo_post".tr,
                            style: CustomTextStyles.labelLargeInterMedium_1,
                          ),
                        ),
                        SizedBox(
                          height: 15.v,
                          width: 32.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "lbl_450".tr,
                                  style: CustomTextStyles.labelLargeInter_1,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "lbl_450".tr,
                                  style: CustomTextStyles.labelLargeInter_1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "msg_completed_5_1_23".tr,
                      style: CustomTextStyles.labelMediumBlack900,
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

  /// Common widget
  Widget _buildLifetimeEarnings(
    BuildContext context, {
    required String price,
    required String lifetimeEarnings,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlack9007.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            price,
            style: CustomTextStyles.headlineSmallInterBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
          SizedBox(height: 1.v),
          Text(
            lifetimeEarnings,
            style: CustomTextStyles.labelMediumGray50005.copyWith(
              color: appTheme.gray50005,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildClientTestimonials(
    BuildContext context, {
    required String nameHere,
    required String photoPost,
    required String price,
    required String completed,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: CustomIconButton(
            height: 54.adaptSize,
            width: 54.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.gradientIndigoAToDeepPurpleA,
            child: CustomImageView(
              imagePath: ImageConstant.imgIcPhoto,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameHere,
                  style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                    color: appTheme.black900,
                  ),
                ),
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        photoPost,
                        style:
                            CustomTextStyles.labelLargeInterMedium_1.copyWith(
                          color: appTheme.black900,
                        ),
                      ),
                      Text(
                        price,
                        style: CustomTextStyles.labelLargeInter_1.copyWith(
                          color: appTheme.black900,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    completed,
                    style: CustomTextStyles.labelMediumBlack900.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
