import '../business_profile_user_one_screen/widgets/userprofilelist1_item_widget.dart';
import 'bloc/business_profile_user_one_bloc.dart';
import 'models/business_profile_user_one_model.dart';
import 'models/userprofilelist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';

class BusinessProfileUserOneScreen extends StatelessWidget {
  const BusinessProfileUserOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<BusinessProfileUserOneBloc>(
      create: (context) =>
          BusinessProfileUserOneBloc(BusinessProfileUserOneState(
        businessProfileUserOneModelObj: BusinessProfileUserOneModel(),
      ))
            ..add(BusinessProfileUserOneInitialEvent()),
      child: BusinessProfileUserOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                SizedBox(height: 14.v),
                _buildUserProfileSection(context),
                SizedBox(height: 2.v),
                Container(
                  width: 176.h,
                  margin: EdgeInsets.only(left: 29.h),
                  child: Text(
                    "msg_lorem_ipsum_dolor3".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallInterBlack90012,
                  ),
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(left: 29.h),
                  child: Text(
                    "lbl_321_orders_done".tr,
                    style: CustomTextStyles.titleSmallBlack900SemiBold_2,
                  ),
                ),
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
                        buttonTextStyle:
                            CustomTextStyles.titleSmallPrimaryContainer,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 17.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.outlineRedA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 1.v),
                            Container(
                              height: 31.v,
                              width: 41.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 9.h,
                                vertical: 4.v,
                              ),
                              decoration: AppDecoration.fillGray40001.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder7,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgHiconBoldMenu,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                alignment: Alignment.topLeft,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                _buildCompletedOrdersSection(context),
                SizedBox(height: 19.v),
                _buildUserProfileList(context),
                SizedBox(height: 26.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_see_more".tr,
                    style: CustomTextStyles.bodyMediumLexendPrimary14,
                  ),
                ),
                SizedBox(height: 25.v),
                _buildReviewsSection(context),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 38.h,
                    right: 55.h,
                  ),
                  child: _buildBusinessProfileSection(
                    context,
                    userName: "lbl_s_m_mamun".tr,
                    date: "lbl_may_1_2023".tr,
                    numberLabel: "lbl_5_0".tr,
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
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 35.h,
                    right: 58.h,
                  ),
                  child: _buildBusinessProfileSection(
                    context,
                    userName: "lbl_s_m_mamun".tr,
                    date: "lbl_may_1_2023".tr,
                    numberLabel: "lbl_5_0".tr,
                  ),
                ),
                SizedBox(height: 6.v),
                Container(
                  width: 334.h,
                  margin: EdgeInsets.only(
                    left: 37.h,
                    right: 55.h,
                  ),
                  child: Text(
                    "msg_lorem_ipsum_dolor2".tr,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallBlack900Light,
                  ),
                ),
                SizedBox(height: 35.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.h),
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
                top: 33.v,
                bottom: 229.v,
              ),
            ),
          ),
          Container(
            height: 290.v,
            width: 335.h,
            margin: EdgeInsets.only(left: 48.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
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
                          imagePath: ImageConstant.imgEllipse162,
                          height: 220.v,
                          width: 214.h,
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 30.v,
                            right: 24.h,
                          ),
                          child: CustomIconButton(
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillBlackTL22,
                            alignment: Alignment.topRight,
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgHiconLinearPrimary23x23,
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
  Widget _buildUserProfileSection(BuildContext context) {
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
                      imagePath: ImageConstant.imgStar132,
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
  Widget _buildCompletedOrdersSection(BuildContext context) {
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
  Widget _buildUserProfileList(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 29.h,
          right: 36.h,
        ),
        child: BlocSelector<BusinessProfileUserOneBloc,
            BusinessProfileUserOneState, BusinessProfileUserOneModel?>(
          selector: (state) => state.businessProfileUserOneModelObj,
          builder: (context, businessProfileUserOneModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 15.v,
                );
              },
              itemCount: businessProfileUserOneModelObj
                      ?.userprofilelist1ItemList.length ??
                  0,
              itemBuilder: (context, index) {
                Userprofilelist1ItemModel model = businessProfileUserOneModelObj
                        ?.userprofilelist1ItemList[index] ??
                    Userprofilelist1ItemModel();
                return Userprofilelist1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewsSection(BuildContext context) {
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
  Widget _buildBusinessProfileSection(
    BuildContext context, {
    required String userName,
    required String date,
    required String numberLabel,
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
