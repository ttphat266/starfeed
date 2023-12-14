import 'bloc/business_profile_user_two_bloc.dart';
import 'models/business_profile_user_two_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';

class BusinessProfileUserTwoScreen extends StatelessWidget {
  const BusinessProfileUserTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<BusinessProfileUserTwoBloc>(
      create: (context) =>
          BusinessProfileUserTwoBloc(BusinessProfileUserTwoState(
        businessProfileUserTwoModelObj: BusinessProfileUserTwoModel(),
      ))
            ..add(BusinessProfileUserTwoInitialEvent()),
      child: BusinessProfileUserTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<BusinessProfileUserTwoBloc, BusinessProfileUserTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 989.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse163,
                            height: 220.v,
                            width: 214.h,
                            alignment: Alignment.topRight,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 243.adaptSize,
                              width: 243.adaptSize,
                              margin: EdgeInsets.only(top: 47.v),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse8101,
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
                                            imagePath:
                                                ImageConstant.imgGroup246,
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
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(29.h, 715.v, 36.h, 198.v),
                            child: _buildInstagramStack(
                              context,
                              userName: "lbl_johnathon_doe".tr,
                              userStory: "msg_1_video_story_post".tr,
                              userPrice: "lbl_200".tr,
                              userDate: "lbl_20_jun_2023".tr,
                            ),
                          ),
                          _buildJohnathonDoeColumn(context),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 26.v),
                              decoration: AppDecoration.fillPrimaryContainer1,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 7.v),
                                  Opacity(
                                    opacity: 0.6,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgHiconLinear,
                                      height: 28.adaptSize,
                                      width: 28.adaptSize,
                                      margin: EdgeInsets.only(left: 17.h),
                                    ),
                                  ),
                                  SizedBox(height: 243.v),
                                  _buildRabinaTendonRow(context),
                                  SizedBox(height: 2.v),
                                  Container(
                                    width: 176.h,
                                    margin: EdgeInsets.only(left: 29.h),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_about_business2".tr,
                                            style: CustomTextStyles
                                                .titleSmallBlack900SemiBold_1,
                                          ),
                                          TextSpan(
                                            text: "msg_lorem_ipsum_dolor3".tr,
                                            style: CustomTextStyles
                                                .bodySmallInterBlack90012_5,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(height: 4.v),
                                  Container(
                                    width: 325.h,
                                    margin: EdgeInsets.only(
                                      left: 29.h,
                                      right: 73.h,
                                    ),
                                    child: Text(
                                      "msg_lorem_ipsum_dolor2".tr,
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodySmallInterBlack90012,
                                    ),
                                  ),
                                  SizedBox(height: 10.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 29.h),
                                    child: Text(
                                      "lbl_321_orders_done".tr,
                                      style: CustomTextStyles
                                          .labelMediumBlack900SemiBold,
                                    ),
                                  ),
                                  SizedBox(height: 5.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 29.h),
                                    child: Row(
                                      children: [
                                        CustomElevatedButton(
                                          height: 31.v,
                                          width: 129.h,
                                          text: "lbl_message".tr,
                                          margin: EdgeInsets.only(
                                            top: 9.v,
                                            bottom: 8.v,
                                          ),
                                          buttonStyle: CustomButtonStyles.none,
                                          decoration: CustomButtonStyles
                                              .gradientIndigoAToDeepPurpleADecoration,
                                          buttonTextStyle: CustomTextStyles
                                              .titleSmallPrimaryContainer,
                                        ),
                                        Container(
                                          height: 48.v,
                                          width: 56.h,
                                          margin: EdgeInsets.only(left: 17.h),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  height: 31.v,
                                                  width: 41.h,
                                                  margin: EdgeInsets.only(
                                                      left: 6.h),
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
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  height: 48.v,
                                                  width: 56.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      10.h,
                                                    ),
                                                    border: Border.all(
                                                      color: appTheme.redA700,
                                                      width: 3.h,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 14.v),
                                  _buildNumberOfCompletedColumn(context),
                                  SizedBox(height: 19.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 29.h,
                                      right: 36.h,
                                    ),
                                    child: _buildInstagramStack(
                                      context,
                                      userName: "lbl_johnathon_doe".tr,
                                      userStory: "msg_1_image_story_post".tr,
                                      userPrice: "lbl_200".tr,
                                      userDate: "lbl_20_jun_2023".tr,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          _buildLineColumn(context),
                        ],
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Text(
                      "lbl_see_more".tr,
                      style: CustomTextStyles.bodyMediumLexendPrimary14,
                    ),
                    SizedBox(height: 26.v),
                    _buildReviewsColumn(context),
                    SizedBox(height: 22.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 38.h,
                        right: 55.h,
                      ),
                      child: _buildSMMamunRow(
                        context,
                        userName: "lbl_s_m_mamun".tr,
                        date: "lbl_may_1_2023".tr,
                        numberLabel: "lbl_5_0".tr,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Container(
                      width: 348.h,
                      margin: EdgeInsets.only(
                        left: 38.h,
                        right: 40.h,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dolor2".tr,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallBlack900Light,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 35.h,
                        right: 58.h,
                      ),
                      child: _buildSMMamunRow(
                        context,
                        userName: "lbl_s_m_mamun".tr,
                        date: "lbl_may_1_2023".tr,
                        numberLabel: "lbl_5_0".tr,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Container(
                      width: 348.h,
                      margin: EdgeInsets.only(
                        left: 37.h,
                        right: 43.h,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dolor2".tr,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallBlack900Light,
                      ),
                    ),
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
  Widget _buildJohnathonDoeColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 29.h,
          right: 36.h,
          bottom: 16.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildInstagramStack(
              context,
              userName: "lbl_johnathon_doe".tr,
              userStory: "msg_1_image_story_post".tr,
              userPrice: "lbl_200".tr,
              userDate: "lbl_20_jun_2023".tr,
            ),
            SizedBox(height: 15.v),
            _buildInstagramStack(
              context,
              userName: "lbl_sujana_gomase".tr,
              userStory: "msg_1_video_story_post".tr,
              userPrice: "lbl_200".tr,
              userDate: "lbl_20_jun_2023".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRabinaTendonRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 29.h,
          right: 36.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Opacity(
              opacity: 0.8,
              child: Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  "lbl_rabina_tendon".tr,
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
                      imagePath: ImageConstant.imgStar133,
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
  Widget _buildNumberOfCompletedColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
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
              "msg_number_of_completed".tr,
              style: CustomTextStyles.titleMediumBlack900_2,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 31.h,
          vertical: 13.v,
        ),
        decoration: BoxDecoration(
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
            SizedBox(height: 59.v),
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
    );
  }

  /// Section Widget
  Widget _buildReviewsColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray200,
      child: Opacity(
        opacity: 0.8,
        child: Text(
          "lbl_reviews".tr,
          style: CustomTextStyles.titleMediumBlack900_2,
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildInstagramStack(
    BuildContext context, {
    required String userName,
    required String userStory,
    required String userPrice,
    required String userDate,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse81354x54,
            height: 54.adaptSize,
            width: 54.adaptSize,
            radius: BorderRadius.circular(
              27.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                top: 9.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: Text(
                      userName,
                      style: theme.textTheme.titleSmall!.copyWith(
                        color: appTheme.black900.withOpacity(0.64),
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.4,
                          child: Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              userStory,
                              style: theme.textTheme.labelMedium!.copyWith(
                                color: appTheme.black900.withOpacity(0.49),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Text(
                            userPrice,
                            style:
                                CustomTextStyles.labelMediumBlueA400.copyWith(
                              color: appTheme.blueA400.withOpacity(0.6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Opacity(
                    opacity: 0.4,
                    child: Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        userDate,
                        style: theme.textTheme.labelMedium!.copyWith(
                          color: appTheme.black900.withOpacity(0.49),
                        ),
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

  /// Common widget
  Widget _buildSMMamunRow(
    BuildContext context, {
    required String userName,
    required String date,
    required String numberLabel,
  }) {
    return Row(
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
                date,
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
            bottom: 3.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 1.h,
            top: 6.v,
            bottom: 5.v,
          ),
          child: Text(
            numberLabel,
            style: CustomTextStyles.bodyMediumLexendBlack90014.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
