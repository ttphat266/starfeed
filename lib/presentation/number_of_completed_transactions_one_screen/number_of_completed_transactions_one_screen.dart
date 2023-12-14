import 'bloc/number_of_completed_transactions_one_bloc.dart';
import 'models/number_of_completed_transactions_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';

class NumberOfCompletedTransactionsOneScreen extends StatelessWidget {
  const NumberOfCompletedTransactionsOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NumberOfCompletedTransactionsOneBloc>(
      create: (context) => NumberOfCompletedTransactionsOneBloc(
          NumberOfCompletedTransactionsOneState(
        numberOfCompletedTransactionsOneModelObj:
            NumberOfCompletedTransactionsOneModel(),
      ))
        ..add(NumberOfCompletedTransactionsOneInitialEvent()),
      child: NumberOfCompletedTransactionsOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<NumberOfCompletedTransactionsOneBloc,
        NumberOfCompletedTransactionsOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
              height: mediaQueryData.size.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse115,
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: AppDecoration.fillPrimaryContainer1,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 33.v),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgHiconLinear,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              margin: EdgeInsets.only(left: 17.h),
                            ),
                          ),
                          Spacer(),
                          _buildRabinaTendonRow(context),
                          SizedBox(height: 2.v),
                          Container(
                            width: 205.h,
                            margin: EdgeInsets.only(left: 29.h),
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
                            padding: EdgeInsets.only(left: 29.h),
                            child: Text(
                              "msg_321_completed_jobs".tr,
                              style:
                                  CustomTextStyles.labelMediumBlack900SemiBold,
                            ),
                          ),
                          SizedBox(height: 13.v),
                          Padding(
                            padding: EdgeInsets.only(left: 29.h),
                            child: Row(
                              children: [
                                CustomElevatedButton(
                                  height: 31.v,
                                  width: 129.h,
                                  text: "lbl_edit_bio".tr,
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
                                  margin: EdgeInsets.only(left: 17.h),
                                  buttonStyle: CustomButtonStyles.none,
                                  decoration: CustomButtonStyles
                                      .gradientIndigoAToDeepPurpleADecoration,
                                  buttonTextStyle: CustomTextStyles
                                      .titleSmallPrimaryContainer,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 27.v),
                          _buildNumberOfCompletedColumn(context),
                          SizedBox(height: 19.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 29.h,
                              right: 36.h,
                            ),
                            child: _buildJohnathonDoeRow(
                              context,
                              johnathonDoe: "lbl_johnathon_doe".tr,
                              duration: "msg_1_image_story_post".tr,
                              price: "lbl_200".tr,
                              jun: "lbl_20_jun_2023".tr,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          _buildJohnathonDoeStack(context),
                        ],
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
                      imagePath: ImageConstant.imgStar114,
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
          SizedBox(height: 2.v),
          Opacity(
            opacity: 0.8,
            child: Text(
              "msg_number_of_completed2".tr,
              style: CustomTextStyles.titleMediumBlack900_2,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJohnathonDoeStack(BuildContext context) {
    return SizedBox(
      height: 301.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 29.h,
              right: 36.h,
              bottom: 225.v,
            ),
            child: _buildJohnathonDoeRow(
              context,
              johnathonDoe: "lbl_johnathon_doe".tr,
              duration: "msg_1_video_story_post".tr,
              price: "lbl_200".tr,
              jun: "lbl_20_jun_2023".tr,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 29.h,
                right: 36.h,
                bottom: 43.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildJohnathonDoeRow(
                    context,
                    johnathonDoe: "lbl_johnathon_doe".tr,
                    duration: "msg_1_image_story_post".tr,
                    price: "lbl_200".tr,
                    jun: "lbl_20_jun_2023".tr,
                  ),
                  SizedBox(height: 15.v),
                  _buildJohnathonDoeRow(
                    context,
                    johnathonDoe: "lbl_sujana_gomase".tr,
                    duration: "msg_1_video_story_post".tr,
                    price: "lbl_200".tr,
                    jun: "lbl_20_jun_2023".tr,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 12.v,
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
                  SizedBox(height: 48.v),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0.6,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgTablerCrop,
                            height: 22.adaptSize,
                            width: 22.adaptSize,
                          ),
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "msg_edit_profile_picture".tr,
                              style: CustomTextStyles.titleMediumBlack900_1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    height: 45.v,
                    width: 213.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Opacity(
                                opacity: 0.6,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgHiconOutlineBlack900,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                ),
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text(
                                    "msg_select_profile_picture".tr,
                                    style:
                                        CustomTextStyles.titleMediumBlack900_1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 45.v,
                            width: 213.h,
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
                  SizedBox(height: 3.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildJohnathonDoeRow(
    BuildContext context, {
    required String johnathonDoe,
    required String duration,
    required String price,
    required String jun,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse816,
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
                      johnathonDoe,
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
                          child: Text(
                            duration,
                            style: theme.textTheme.labelMedium!.copyWith(
                              color: appTheme.black900.withOpacity(0.49),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Text(
                            price,
                            style:
                                CustomTextStyles.labelMediumBlueA400.copyWith(
                              color: appTheme.blueA400.withOpacity(0.6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Opacity(
                    opacity: 0.4,
                    child: Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        jun,
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
}
