import 'bloc/explore_business_one_bloc.dart';
import 'models/explore_business_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class ExploreBusinessOneScreen extends StatelessWidget {
  const ExploreBusinessOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreBusinessOneBloc>(
      create: (context) => ExploreBusinessOneBloc(ExploreBusinessOneState(
        exploreBusinessOneModelObj: ExploreBusinessOneModel(),
      ))
        ..add(ExploreBusinessOneInitialEvent()),
      child: ExploreBusinessOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildRecentOrders(context),
                SizedBox(height: 10.v),
                _buildUserProfile(context),
                SizedBox(height: 9.v),
                _buildReviews(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return SizedBox(
      height: 400.v,
      width: 414.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 38.v,
              ),
              decoration: AppDecoration.fillPurpleA.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder129,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: Text(
                          "lbl_explore".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Opacity(
                        opacity: 0.3,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgHugeIconBlack900,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 56.h),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgHiconLinearBlack900,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 11.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFolder,
                        height: 24.v,
                        width: 27.h,
                        margin: EdgeInsets.only(left: 10.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 23.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 38.v,
                      width: 37.h,
                      margin: EdgeInsets.only(right: 14.h),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Opacity(
                            opacity: 0.3,
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgHiconLinearBlack90024x24,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 38.v,
                              width: 37.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10.h,
                                ),
                                border: Border.all(
                                  color: appTheme.redA700,
                                  width: 2.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 96.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 2.h,
                top: 148.v,
              ),
              child: Row(
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: Container(
                      width: 83.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 3.v,
                      ),
                      decoration: AppDecoration.fillPrimary2.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Text(
                        "lbl_suggested".tr,
                        style: CustomTextStyles.labelLargeInterPrimaryContainer,
                      ),
                    ),
                  ),
                  Container(
                    width: 109.h,
                    margin: EdgeInsets.only(left: 12.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Text(
                      "lbl_top_influencers".tr,
                      style: CustomTextStyles.labelLargeInterBlack900Medium_3,
                    ),
                  ),
                  Container(
                    width: 64.h,
                    margin: EdgeInsets.only(left: 12.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Text(
                      "lbl_popular".tr,
                      style: CustomTextStyles.labelLargeInterBlack900Medium_3,
                    ),
                  ),
                  Container(
                    width: 94.h,
                    margin: EdgeInsets.only(left: 12.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Text(
                      "lbl_new_comers".tr,
                      style: CustomTextStyles.labelLargeInterBlack900Medium_3,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHiconLinearIndigo900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 2.h,
              top: 38.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 88.v,
            ),
            child: BlocSelector<ExploreBusinessOneBloc, ExploreBusinessOneState,
                TextEditingController?>(
              selector: (state) => state.searchTwoController,
              builder: (context, searchTwoController) {
                return CustomTextFormField(
                  width: 325.h,
                  controller: searchTwoController,
                  hintText: "msg_vagan_influencers".tr,
                  hintStyle: CustomTextStyles.bodySmallInterBlack900Light,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.topLeft,
                  prefix: Container(
                    margin: EdgeInsets.all(9.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSearch2,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 34.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    top: 9.v,
                    right: 30.h,
                    bottom: 9.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.h),
            child: _buildDoctorReviews(
              context,
              textTommyRodberg: "lbl_tommy_rodberg".tr,
              textFollowersCounter: "lbl_2837_followers".tr,
              textFifty: "lbl_5_0".tr,
              textPrice: "lbl_89_300".tr,
            ),
          ),
          _buildDoctorReviews(
            context,
            textTommyRodberg: "lbl_tommy_rodberg".tr,
            textFollowersCounter: "lbl_2837_followers".tr,
            textFifty: "lbl_5_0".tr,
            textPrice: "lbl_89_300".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 9.h,
        right: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outlineRedA700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: _buildDoctorReviews(
                    context,
                    textTommyRodberg: "lbl_tommy_rodberg".tr,
                    textFollowersCounter: "lbl_2837_followers".tr,
                    textFifty: "lbl_5_0".tr,
                    textPrice: "lbl_89_300".tr,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 5.v,
              bottom: 6.v,
            ),
            child: _buildDoctorReviews(
              context,
              textTommyRodberg: "lbl_tommy_rodberg".tr,
              textFollowersCounter: "lbl_2837_followers".tr,
              textFifty: "lbl_5_0".tr,
              textPrice: "lbl_89_300".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviews(BuildContext context) {
    return SizedBox(
      height: 417.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 12.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildDoctorReviews(
                    context,
                    textTommyRodberg: "lbl_henna_riddle".tr,
                    textFollowersCounter: "lbl_2837_followers".tr,
                    textFifty: "lbl_5_0".tr,
                    textPrice: "lbl_89_300".tr,
                  ),
                  SizedBox(height: 15.v),
                  _buildClientTestimonials(
                    context,
                    userName: "lbl_tommy_rodberg".tr,
                    followersCounter: "lbl_2837_followers".tr,
                    fiftyText: "lbl_5_0".tr,
                    priceText: "lbl_89_300".tr,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: _buildClientTestimonials(
              context,
              userName: "lbl_tommy_rodberg".tr,
              followersCounter: "lbl_2837_followers".tr,
              fiftyText: "lbl_5_0".tr,
              priceText: "lbl_89_300".tr,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imageNotFound,
            height: 220.v,
            width: 151.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 20.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBottomBar,
            height: 100.v,
            width: 428.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 122.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: _buildDoctorReviews(
              context,
              textTommyRodberg: "lbl_selina_gomase".tr,
              textFollowersCounter: "lbl_2837_followers".tr,
              textFifty: "lbl_5_0".tr,
              textPrice: "lbl_89_300".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDoctorReviews(
    BuildContext context, {
    required String textTommyRodberg,
    required String textFollowersCounter,
    required String textFifty,
    required String textPrice,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse815115x115,
                  height: 115.adaptSize,
                  width: 115.adaptSize,
                  radius: BorderRadius.circular(
                    57.h,
                  ),
                  margin: EdgeInsets.only(top: 3.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    bottom: 95.v,
                  ),
                  child: CustomIconButton(
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillPrimaryContainer,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHiconLinearPrimary23x23,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Opacity(
            opacity: 0.7,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                textTommyRodberg,
                style: CustomTextStyles.labelLargeBlack900Medium.copyWith(
                  color: appTheme.black900.withOpacity(0.6),
                ),
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        textFollowersCounter,
                        style: CustomTextStyles.bodySmall8.copyWith(
                          color: appTheme.black900.withOpacity(0.53),
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgStar12,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          radius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 2.h,
                              bottom: 1.v,
                            ),
                            child: Text(
                              textFifty,
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: appTheme.black900.withOpacity(0.53),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 54.h,
                  margin: EdgeInsets.only(
                    left: 64.h,
                    top: 3.v,
                    bottom: 6.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: Text(
                    textPrice,
                    style: CustomTextStyles.labelMediumTitilliumWebBlack900
                        .copyWith(
                      color: appTheme.black900.withOpacity(0.6),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildClientTestimonials(
    BuildContext context, {
    required String userName,
    required String followersCounter,
    required String fiftyText,
    required String priceText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse815115x115,
            height: 115.adaptSize,
            width: 115.adaptSize,
            radius: BorderRadius.circular(
              57.h,
            ),
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Opacity(
              opacity: 0.7,
              child: Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  userName,
                  style: CustomTextStyles.labelLargeBlack900Medium.copyWith(
                    color: appTheme.black900.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      followersCounter,
                      style: CustomTextStyles.bodySmall8.copyWith(
                        color: appTheme.black900.withOpacity(0.53),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgStar17,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        radius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 2.h,
                            bottom: 1.v,
                          ),
                          child: Text(
                            fiftyText,
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: appTheme.black900.withOpacity(0.53),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 54.h,
                margin: EdgeInsets.only(
                  left: 64.h,
                  top: 3.v,
                  bottom: 6.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 2.v,
                ),
                decoration: AppDecoration.fillPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Text(
                  priceText,
                  style:
                      CustomTextStyles.labelMediumTitilliumWebBlack900.copyWith(
                    color: appTheme.black900.withOpacity(0.6),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
