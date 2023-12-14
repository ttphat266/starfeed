import 'bloc/influncer_profile_menu_bloc.dart';
import 'models/influncer_profile_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';

class InfluncerProfileMenuScreen extends StatelessWidget {
  const InfluncerProfileMenuScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InfluncerProfileMenuBloc>(
      create: (context) => InfluncerProfileMenuBloc(InfluncerProfileMenuState(
        influncerProfileMenuModelObj: InfluncerProfileMenuModel(),
      ))
        ..add(InfluncerProfileMenuInitialEvent()),
      child: InfluncerProfileMenuScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InfluncerProfileMenuBloc, InfluncerProfileMenuState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: mediaQueryData.size.height,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          height: 220.v,
                          width: 214.h,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse110,
                                height: 220.v,
                                width: 214.h,
                                alignment: Alignment.center,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 35.v,
                                  right: 20.h,
                                ),
                                child: CustomIconButton(
                                  height: 45.adaptSize,
                                  width: 45.adaptSize,
                                  padding: EdgeInsets.all(10.h),
                                  decoration:
                                      IconButtonStyleHelper.fillBlackTL22,
                                  alignment: Alignment.topRight,
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgHiconLinearGray5045x45,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildVideoDetails(context),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 243.adaptSize,
                          width: 243.adaptSize,
                          margin: EdgeInsets.only(top: 66.v),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse810,
                                height: 243.adaptSize,
                                width: 243.adaptSize,
                                radius: BorderRadius.circular(
                                  121.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 21.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(
                                    right: 27.h,
                                    bottom: 21.v,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgGroup246,
                                        height: 21.v,
                                        width: 25.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 16.v,
                                          width: 17.h,
                                          decoration:
                                              AppDecoration.fillPrimary1,
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgInstagram,
                                            height: 14.v,
                                            width: 15.h,
                                            alignment: Alignment.center,
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
                        alignment: Alignment.center,
                        child: Container(
                          decoration: AppDecoration.fillPrimaryContainer1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 38.v),
                              Opacity(
                                opacity: 0.6,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgHiconLinear,
                                  height: 28.adaptSize,
                                  width: 28.adaptSize,
                                  margin: EdgeInsets.only(left: 15.h),
                                ),
                              ),
                              SizedBox(height: 304.v),
                              _buildUserProfile(context),
                              SizedBox(height: 2.v),
                              Container(
                                width: 205.h,
                                margin: EdgeInsets.only(left: 40.h),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_place_for_rap_and2".tr,
                                        style: CustomTextStyles
                                            .titleSmallBlack900SemiBold_1,
                                      ),
                                      TextSpan(
                                        text: "msg_music_rap_hiphop".tr,
                                        style: CustomTextStyles
                                            .bodyMediumBlack90014,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 10.v),
                              Padding(
                                padding: EdgeInsets.only(left: 40.h),
                                child: Text(
                                  "msg_321_completed_jobs".tr,
                                  style: CustomTextStyles
                                      .labelMediumBlack900SemiBold,
                                ),
                              ),
                              SizedBox(height: 11.v),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 38.h,
                                  right: 75.h,
                                ),
                                child: Row(
                                  children: [
                                    CustomElevatedButton(
                                      height: 31.v,
                                      width: 129.h,
                                      text: "lbl_message".tr,
                                      buttonStyle: CustomButtonStyles.none,
                                      decoration: CustomButtonStyles
                                          .gradientIndigoAToDeepPurpleADecoration,
                                      buttonTextStyle: CustomTextStyles
                                          .titleSmallPrimaryContainer,
                                    ),
                                    CustomElevatedButton(
                                      height: 31.v,
                                      width: 129.h,
                                      text: "lbl_share_profile".tr,
                                      margin: EdgeInsets.only(left: 8.h),
                                      buttonStyle: CustomButtonStyles.fillGray,
                                      buttonTextStyle: CustomTextStyles
                                          .titleSmallPrimaryContainer,
                                    ),
                                    Container(
                                      height: 31.v,
                                      width: 41.h,
                                      margin: EdgeInsets.only(left: 8.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 9.h,
                                        vertical: 4.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillGray40001.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder7,
                                      ),
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgHiconBoldMenu,
                                        height: 22.adaptSize,
                                        width: 22.adaptSize,
                                        alignment: Alignment.topLeft,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 18.v),
                              _buildAvailablePlatforms(context),
                              SizedBox(height: 15.v),
                              _buildPrices(context),
                            ],
                          ),
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
  Widget _buildVideoDetails(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 39.h),
        padding: EdgeInsets.symmetric(
          horizontal: 7.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.outlineBlack9001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 2.v),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "lbl_15_second_video".tr,
                style: CustomTextStyles.titleSmallGray90002,
              ),
            ),
            SizedBox(height: 6.v),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "msg_a_quick_video_mentioning".tr,
                style: CustomTextStyles.bodySmallInterGray90002,
              ),
            ),
            SizedBox(height: 1.v),
            Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 24.v,
                    width: 27.h,
                    margin: EdgeInsets.only(
                      top: 10.v,
                      bottom: 2.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.fillGray700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder3,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHiconLinearGray5014x14,
                      height: 16.v,
                      width: 14.h,
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 10.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "lbl_1".tr,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumGray700,
                    ),
                  ),
                  Container(
                    height: 24.v,
                    width: 30.h,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      top: 10.v,
                      bottom: 2.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.fillGray700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder3,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHiconLinear14x14,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                  Spacer(),
                  Opacity(
                    opacity: 0.8,
                    child: Text(
                      "lbl_500".tr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 38.h,
          right: 27.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Opacity(
              opacity: 0.8,
              child: Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  "lbl_robbie_prosek".tr,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgStar123x23,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                      radius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                    Opacity(
                      opacity: 0.7,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 2.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "lbl_5_0".tr,
                          style: CustomTextStyles.bodyMediumLexend,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.v),
                Opacity(
                  opacity: 0.4,
                  child: Text(
                    "lbl_250_reviews".tr,
                    style: CustomTextStyles.bodySmallInterBlack900_2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAvailablePlatforms(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Opacity(
            opacity: 0.8,
            child: Text(
              "msg_available_platforms".tr,
              style: CustomTextStyles.titleMediumBlack900_2,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrices(BuildContext context) {
    return SizedBox(
      height: 341.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                top: 153.v,
                bottom: 127.v,
              ),
              padding: EdgeInsets.symmetric(horizontal: 27.h),
              decoration: AppDecoration.fillGray200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 29.v),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Opacity(
                            opacity: 0.8,
                            child: Padding(
                              padding: EdgeInsets.only(right: 5.h),
                              child: Text(
                                "lbl_prices".tr,
                                style: CustomTextStyles.titleMediumBlack900_2,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8.v),
                        SizedBox(
                          width: 63.h,
                          child: Divider(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: 0.8,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 29.v,
                        bottom: 9.v,
                      ),
                      child: Text(
                        "lbl_work_sample".tr,
                        style: CustomTextStyles.titleMediumBlack900_2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Opacity(
              opacity: 0.8,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38.h,
                  bottom: 90.v,
                ),
                child: Text(
                  "lbl_video".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.h),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.outlinePrimaryTL4,
              alignment: Alignment.topLeft,
              child: CustomImageView(
                imagePath: ImageConstant.imgPhInstagramLogo,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 40.h,
                top: 46.v,
                right: 27.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.fillPrimary,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRiFacebookFill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 19.h,
                          top: 10.v,
                          bottom: 8.v,
                        ),
                        child: Text(
                          "lbl_robbieprosek2".tr,
                          style: CustomTextStyles.bodyMediumLexendPrimary,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.v,
                          bottom: 9.v,
                        ),
                        child: Text(
                          "lbl_78k_followers".tr,
                          style: CustomTextStyles.bodyMediumLexendGray500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7.v),
                        decoration: AppDecoration.fillPrimary1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3,
                        ),
                        child: Text(
                          "lbl_block_users".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 19.h,
                          top: 10.v,
                          bottom: 8.v,
                        ),
                        child: Text(
                          "lbl_robbieprosek2".tr,
                          style: CustomTextStyles.bodyMediumLexendPrimary,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.v,
                          bottom: 9.v,
                        ),
                        child: Text(
                          "lbl_78k_followers".tr,
                          style: CustomTextStyles.bodyMediumLexendGray500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(96.h, 8.v, 27.h, 312.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      "lbl_robbieprosek2".tr,
                      style: CustomTextStyles.bodyMediumLexendPrimary,
                    ),
                  ),
                  Text(
                    "lbl_78k_followers".tr,
                    style: CustomTextStyles.bodyMediumLexendGray500,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 31.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 50.h,
                        child: Divider(
                          color: appTheme.black900.withOpacity(0.56),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 81.v),
                  Text(
                    "lbl_report".tr,
                    style: CustomTextStyles.titleMediumMedium_2,
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "lbl_block".tr,
                    style: CustomTextStyles.titleMediumMedium_2,
                  ),
                  SizedBox(height: 13.v),
                  Text(
                    "msg_about_this_account".tr,
                    style: CustomTextStyles.titleMediumMedium_2,
                  ),
                  SizedBox(height: 15.v),
                  Text(
                    "msg_copy_profile_url".tr,
                    style: CustomTextStyles.titleMediumMedium_2,
                  ),
                  SizedBox(height: 15.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
