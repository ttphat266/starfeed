import 'bloc/my_profile_influencer_bloc.dart';
import 'models/my_profile_influencer_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';

class MyProfileInfluencerScreen extends StatelessWidget {
  const MyProfileInfluencerScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyProfileInfluencerBloc>(
      create: (context) => MyProfileInfluencerBloc(MyProfileInfluencerState(
        myProfileInfluencerModelObj: MyProfileInfluencerModel(),
      ))
        ..add(MyProfileInfluencerInitialEvent()),
      child: MyProfileInfluencerScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MyProfileInfluencerBloc, MyProfileInfluencerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 9.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 39.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildHiconLinearStack(context),
                            SizedBox(height: 60.v),
                            _buildRobbieProsekRow(context),
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
                                      style:
                                          CustomTextStyles.bodyMediumBlack90014,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 38.h,
                                right: 65.h,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 11.v),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 2.h),
                                          child: Text(
                                            "msg_321_completed_jobs".tr,
                                            style: CustomTextStyles
                                                .labelMediumBlack900SemiBold,
                                          ),
                                        ),
                                        SizedBox(height: 11.v),
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
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 54.v,
                                    width: 188.h,
                                    margin: EdgeInsets.only(
                                      left: 8.h,
                                      top: 12.v,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        CustomElevatedButton(
                                          height: 31.v,
                                          width: 129.h,
                                          text: "lbl_share_profile".tr,
                                          buttonStyle:
                                              CustomButtonStyles.fillGray,
                                          buttonTextStyle: CustomTextStyles
                                              .titleSmallPrimaryContainer,
                                          alignment: Alignment.centerLeft,
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 8.h,
                                              vertical: 9.v,
                                            ),
                                            decoration: AppDecoration
                                                .outlineRedA700
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder7,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 1.v),
                                                Container(
                                                  height: 31.v,
                                                  width: 41.h,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 9.h,
                                                    vertical: 4.v,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillGray40001
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder7,
                                                  ),
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgHiconBoldMenu,
                                                    height: 22.adaptSize,
                                                    width: 22.adaptSize,
                                                    alignment:
                                                        Alignment.topLeft,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 7.v),
                            _buildAvailablePlatformsColumn(context),
                            SizedBox(height: 15.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 40.h,
                                right: 27.h,
                              ),
                              child: _buildRiFacebookFillRow(
                                context,
                                username: "lbl_robbieprosek2".tr,
                                followersCount: "lbl_78k_followers".tr,
                              ),
                            ),
                            SizedBox(height: 9.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 40.h,
                                right: 27.h,
                              ),
                              child: _buildRiFacebookFillRow(
                                context,
                                username: "lbl_robbieprosek2".tr,
                                followersCount: "lbl_78k_followers".tr,
                              ),
                            ),
                            SizedBox(height: 9.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 40.h,
                                right: 27.h,
                              ),
                              child: _buildRiFacebookFillRow(
                                context,
                                username: "lbl_robbieprosek2".tr,
                                followersCount: "lbl_78k_followers".tr,
                              ),
                            ),
                            SizedBox(height: 14.v),
                            _buildPricesColumn(context),
                            SizedBox(height: 15.v),
                            Opacity(
                              opacity: 0.8,
                              child: Padding(
                                padding: EdgeInsets.only(left: 38.h),
                                child: Text(
                                  "lbl_video".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ),
                            SizedBox(height: 13.v),
                            _buildDurationColumn1(context),
                            SizedBox(height: 10.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 39.h),
                              child: _buildDurationColumn(
                                context,
                                duration: "msg_24_hours_video_story".tr,
                                aPostContaining:
                                    "msg_a_short_video_mentioning".tr,
                                zeroLabel: "lbl_0".tr,
                                priceLabel: "lbl_750".tr,
                              ),
                            ),
                            SizedBox(height: 15.v),
                            Opacity(
                              opacity: 0.8,
                              child: Padding(
                                padding: EdgeInsets.only(left: 38.h),
                                child: Text(
                                  "lbl_photo".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ),
                            SizedBox(height: 13.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 39.h),
                              child: _buildDurationColumn(
                                context,
                                duration: "msg_24_hours_one_photo".tr,
                                aPostContaining: "msg_a_post_containing".tr,
                                zeroLabel: "lbl_0".tr,
                                priceLabel: "lbl_250".tr,
                              ),
                            ),
                            SizedBox(height: 20.v),
                            _buildCheckout500Column(context),
                            SizedBox(height: 12.v),
                            _buildReviewsColumn(context),
                            SizedBox(height: 24.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 38.h,
                                right: 55.h,
                              ),
                              child: _buildSMMamunRow(
                                context,
                                userName: "lbl_s_m_mamun".tr,
                                month: "lbl_may_1_2023".tr,
                                fifty: "lbl_5_0".tr,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Container(
                              width: 334.h,
                              margin: EdgeInsets.only(
                                left: 40.h,
                                right: 53.h,
                              ),
                              child: Text(
                                "msg_lorem_ipsum_dolor2".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallBlack900Light,
                              ),
                            ),
                            SizedBox(height: 13.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 38.h,
                                right: 55.h,
                              ),
                              child: _buildSMMamunRow(
                                context,
                                userName: "lbl_s_m_mamun".tr,
                                month: "lbl_may_1_2023".tr,
                                fifty: "lbl_5_0".tr,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Container(
                              width: 334.h,
                              margin: EdgeInsets.only(
                                left: 40.h,
                                right: 53.h,
                              ),
                              child: Text(
                                "msg_lorem_ipsum_dolor2".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallBlack900Light,
                              ),
                            ),
                            SizedBox(height: 13.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 38.h,
                                right: 55.h,
                              ),
                              child: _buildSMMamunRow(
                                context,
                                userName: "lbl_s_m_mamun".tr,
                                month: "lbl_may_1_2023".tr,
                                fifty: "lbl_5_0".tr,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Container(
                              width: 334.h,
                              margin: EdgeInsets.only(
                                left: 40.h,
                                right: 53.h,
                              ),
                              child: Text(
                                "msg_lorem_ipsum_dolor2".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallBlack900Light,
                              ),
                            ),
                            SizedBox(height: 13.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 38.h,
                                right: 55.h,
                              ),
                              child: _buildSMMamunRow(
                                context,
                                userName: "lbl_s_m_mamun".tr,
                                month: "lbl_may_1_2023".tr,
                                fifty: "lbl_5_0".tr,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Container(
                              width: 334.h,
                              margin: EdgeInsets.only(
                                left: 40.h,
                                right: 53.h,
                              ),
                              child: Text(
                                "msg_lorem_ipsum_dolor2".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallBlack900Light,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildHiconLinearStack(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.6,
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconLinear,
              height: 28.adaptSize,
              width: 28.adaptSize,
              margin: EdgeInsets.only(
                top: 30.v,
                bottom: 243.v,
              ),
            ),
          ),
          Container(
            height: 301.v,
            width: 341.h,
            margin: EdgeInsets.only(left: 44.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 220.v,
                    width: 217.h,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse1220x217,
                          height: 220.v,
                          width: 217.h,
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 26.v,
                            right: 20.h,
                          ),
                          child: CustomIconButton(
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillBlackTL22,
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
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    height: 243.adaptSize,
                    width: 243.adaptSize,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse810243x243,
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
                                    decoration: AppDecoration.fillPrimary1,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgInstagram,
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRobbieProsekRow(BuildContext context) {
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
                      imagePath: ImageConstant.imgStar11,
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
  Widget _buildAvailablePlatformsColumn(BuildContext context) {
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
  Widget _buildPricesColumn(BuildContext context) {
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
              "lbl_prices".tr,
              style: CustomTextStyles.titleMediumBlack900_2,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDurationColumn1(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 39.h),
        padding: EdgeInsets.symmetric(
          horizontal: 7.h,
          vertical: 4.v,
        ),
        decoration: AppDecoration.outlineBlack9001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 6.v),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "msg_12_hours_video_story".tr,
                style: CustomTextStyles.titleSmallGray90002,
              ),
            ),
            SizedBox(height: 5.v),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "msg_a_quick_video_mentioning".tr,
                style: CustomTextStyles.bodySmallInterGray90002,
              ),
            ),
            SizedBox(height: 5.v),
            Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Row(
                children: [
                  Container(
                    height: 24.v,
                    width: 27.h,
                    margin: EdgeInsets.symmetric(vertical: 6.v),
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
                      top: 6.v,
                      bottom: 8.v,
                    ),
                    child: Text(
                      "lbl_1".tr,
                      style: CustomTextStyles.titleMediumGray700,
                    ),
                  ),
                  Container(
                    height: 24.v,
                    width: 30.h,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      top: 6.v,
                      bottom: 6.v,
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
  Widget _buildCheckout500Column(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          left: 19.h,
          right: 16.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
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
            CustomElevatedButton(
              text: "lbl_checkout_500".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewsColumn(BuildContext context) {
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
              "lbl_reviews".tr,
              style: CustomTextStyles.titleMediumBlack900_2,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRiFacebookFillRow(
    BuildContext context, {
    required String username,
    required String followersCount,
  }) {
    return Row(
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
            username,
            style: CustomTextStyles.bodyMediumLexendPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 9.v,
          ),
          child: Text(
            followersCount,
            style: CustomTextStyles.bodyMediumLexendGray500.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildDurationColumn(
    BuildContext context, {
    required String duration,
    required String aPostContaining,
    required String zeroLabel,
    required String priceLabel,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          Text(
            duration,
            style: CustomTextStyles.titleSmallGray90002.copyWith(
              color: appTheme.gray90002,
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            aPostContaining,
            style: CustomTextStyles.bodySmallInterGray90002.copyWith(
              color: appTheme.gray90002,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              children: [
                Container(
                  height: 24.v,
                  width: 30.h,
                  margin: EdgeInsets.symmetric(vertical: 6.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.fillGray700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgHiconLinearGray5014x14,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 6.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    zeroLabel,
                    style: CustomTextStyles.titleMediumGray700.copyWith(
                      color: appTheme.gray700,
                    ),
                  ),
                ),
                Container(
                  height: 24.v,
                  width: 30.h,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 6.v,
                    bottom: 6.v,
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
                    priceLabel,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      color: theme.colorScheme.primary.withOpacity(0.64),
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

  /// Common widget
  Widget _buildSMMamunRow(
    BuildContext context, {
    required String userName,
    required String month,
    required String fifty,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse821,
          height: 29.adaptSize,
          width: 29.adaptSize,
          radius: BorderRadius.circular(
            14.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 5.h,
            top: 6.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: CustomTextStyles.bodySmallBlack90011.copyWith(
                  color: appTheme.black900,
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                month,
                style: CustomTextStyles.interGray50002.copyWith(
                  color: appTheme.gray50002,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 21.v,
          width: 22.h,
          radius: BorderRadius.circular(
            1.h,
          ),
          margin: EdgeInsets.only(
            top: 4.v,
            bottom: 5.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 1.h,
            top: 5.v,
            bottom: 5.v,
          ),
          child: Text(
            fifty,
            style: CustomTextStyles.bodyMediumLexendBlack90014.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
