import 'bloc/explore_business_two_bloc.dart';
import 'models/explore_business_two_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class ExploreBusinessTwoScreen extends StatelessWidget {
  const ExploreBusinessTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreBusinessTwoBloc>(
      create: (context) => ExploreBusinessTwoBloc(ExploreBusinessTwoState(
        exploreBusinessTwoModelObj: ExploreBusinessTwoModel(),
      ))
        ..add(ExploreBusinessTwoInitialEvent()),
      child: ExploreBusinessTwoScreen(),
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
                _buildSearchTwoStack(context),
                SizedBox(height: 15.v),
                _buildCircleImageRow(context),
                SizedBox(height: 15.v),
                _buildSelinaGomaseStack(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchTwoStack(BuildContext context) {
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
                horizontal: 31.h,
                vertical: 33.v,
              ),
              decoration: AppDecoration.fillPurpleA.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder118,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 33.v,
                        width: 31.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Opacity(
                              opacity: 0.3,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgHugeIconBlack900,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                alignment: Alignment.bottomCenter,
                                margin: EdgeInsets.only(bottom: 3.v),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 33.v,
                                width: 31.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    5.h,
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
                      Container(
                        height: 33.v,
                        width: 31.h,
                        margin: EdgeInsets.only(left: 5.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgHiconLinearBlack900,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.only(bottom: 3.v),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 33.v,
                                width: 31.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    5.h,
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
                      CustomImageView(
                        imagePath: ImageConstant.imgFolder,
                        height: 24.v,
                        width: 27.h,
                        margin: EdgeInsets.only(
                          left: 7.h,
                          top: 5.v,
                          bottom: 3.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 27.v),
                  Opacity(
                    opacity: 0.3,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHiconLinearBlack90024x24,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(right: 3.h),
                    ),
                  ),
                  SizedBox(height: 85.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 170.h,
                top: 38.v,
              ),
              child: Text(
                "lbl_explore".tr,
                style: theme.textTheme.titleMedium,
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
                    width: 75.h,
                    margin: EdgeInsets.only(left: 12.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Text(
                      "lbl_followers".tr,
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
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 88.v,
            ),
            child: BlocSelector<ExploreBusinessTwoBloc, ExploreBusinessTwoState,
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
            child: _buildHugeIconStack(
              context,
              text: "lbl_tommy_rodberg".tr,
              text1: "lbl_2837_followers".tr,
              text2: "lbl_5_0".tr,
              text3: "lbl_89_300".tr,
            ),
          ),
          _buildHugeIconStack(
            context,
            text: "lbl_tommy_rodberg".tr,
            text1: "lbl_2837_followers".tr,
            text2: "lbl_5_0".tr,
            text3: "lbl_89_300".tr,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 33.v,
              width: 31.h,
              margin: EdgeInsets.only(top: 33.v),
              padding: EdgeInsets.symmetric(vertical: 2.v),
              decoration: AppDecoration.outlineRedA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgHiconLinearIndigo900,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCircleImageRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildHugeIconStack(
            context,
            text: "lbl_tommy_rodberg".tr,
            text1: "lbl_2837_followers".tr,
            text2: "lbl_5_0".tr,
            text3: "lbl_89_300".tr,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildHugeIconStack(
              context,
              text: "lbl_tommy_rodberg".tr,
              text1: "lbl_2837_followers".tr,
              text2: "lbl_5_0".tr,
              text3: "lbl_89_300".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelinaGomaseStack(BuildContext context) {
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
                  _buildHugeIconStack(
                    context,
                    text: "lbl_henna_riddle".tr,
                    text1: "lbl_2837_followers".tr,
                    text2: "lbl_5_0".tr,
                    text3: "lbl_89_300".tr,
                  ),
                  SizedBox(height: 15.v),
                  _buildTommyRodbergColumn(
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
            child: _buildTommyRodbergColumn(
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                top: 204.v,
                bottom: 109.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 56.h,
                vertical: 12.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup630,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup602,
                    height: 33.v,
                    width: 36.h,
                    margin: EdgeInsets.only(
                      left: 6.h,
                      top: 34.v,
                      bottom: 13.v,
                    ),
                  ),
                  Spacer(
                    flex: 46,
                  ),
                  Container(
                    height: 67.adaptSize,
                    width: 67.adaptSize,
                    margin: EdgeInsets.only(bottom: 13.v),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 0.7,
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 67.adaptSize,
                              width: 67.adaptSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  33.h,
                                ),
                                border: Border.all(
                                  color: theme.colorScheme.primaryContainer
                                      .withOpacity(0.32),
                                  width: 1.h,
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment(0.31, 0.05),
                                  end: Alignment(0.69, 0.96),
                                  colors: [
                                    appTheme.indigoA20099,
                                    appTheme.deepPurpleA200.withOpacity(0.6),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgStar1,
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 53,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUser2,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    margin: EdgeInsets.only(
                      top: 34.v,
                      bottom: 16.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: _buildHugeIconStack(
              context,
              text: "lbl_selina_gomase".tr,
              text1: "lbl_2837_followers".tr,
              text2: "lbl_5_0".tr,
              text3: "lbl_89_300".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildHugeIconStack(
    BuildContext context, {
    required String text,
    required String text1,
    required String text2,
    required String text3,
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
                text,
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
                        text1,
                        style: CustomTextStyles.bodySmall8.copyWith(
                          color: appTheme.black900.withOpacity(0.53),
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgStar116,
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
                              text2,
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
                    text3,
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
  Widget _buildTommyRodbergColumn(
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
                        imagePath: ImageConstant.imgStar121,
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
