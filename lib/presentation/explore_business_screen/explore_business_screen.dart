import '../explore_business_screen/widgets/explorebusiness_item_widget.dart';
import 'bloc/explore_business_bloc.dart';
import 'models/explore_business_model.dart';
import 'models/explorebusiness_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_switch.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class ExploreBusinessScreen extends StatelessWidget {
  const ExploreBusinessScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreBusinessBloc>(
      create: (context) => ExploreBusinessBloc(ExploreBusinessState(
        exploreBusinessModelObj: ExploreBusinessModel(),
      ))
        ..add(ExploreBusinessInitialEvent()),
      child: ExploreBusinessScreen(),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildExploreStack(context),
                SizedBox(height: 20.v),
                _buildFollowersRow(context),
                SizedBox(height: 17.v),
                _buildEditTextStack(context),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text(
                    "lbl_5_000_10_000".tr,
                    style: CustomTextStyles.labelMediumBlack900,
                  ),
                ),
                SizedBox(height: 22.v),
                Opacity(
                  opacity: 0.7,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_reach_engagement".tr,
                      style: CustomTextStyles.titleSmallBlack900Medium_3,
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                _buildLineStack(context),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text(
                    "lbl_5_000_10_000".tr,
                    style: CustomTextStyles.labelMediumBlack900,
                  ),
                ),
                SizedBox(height: 18.v),
                _buildHennaRiddleRow(context),
                SizedBox(height: 8.v),
                _buildViewStack(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExploreStack(BuildContext context) {
    return Container(
      height: 261.v,
      width: 412.h,
      margin: EdgeInsets.only(left: 16.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 29.v,
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
                        padding: EdgeInsets.only(
                          top: 9.v,
                          bottom: 8.v,
                        ),
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
                          margin: EdgeInsets.only(
                            left: 55.h,
                            top: 8.v,
                            bottom: 6.v,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgHiconLinearBlack900,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          left: 11.h,
                          top: 7.v,
                          bottom: 6.v,
                        ),
                      ),
                      Container(
                        height: 38.v,
                        width: 43.h,
                        margin: EdgeInsets.only(left: 4.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFolder,
                              height: 24.v,
                              width: 27.h,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 6.h),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 38.v,
                                width: 43.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10.h,
                                  ),
                                  border: Border.all(
                                    color: appTheme.redA700,
                                    width: 2.h,
                                    strokeAlign: strokeAlignOutside,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 26.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgHiconLinearPrimary24x24,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 19.h),
                  ),
                  SizedBox(height: 26.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 261.v,
              child: BlocSelector<ExploreBusinessBloc, ExploreBusinessState,
                  ExploreBusinessModel?>(
                selector: (state) => state.exploreBusinessModelObj,
                builder: (context, exploreBusinessModelObj) {
                  return ListView.separated(
                    padding: EdgeInsets.only(
                      top: 144.v,
                      bottom: 92.v,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 12.h,
                      );
                    },
                    itemCount: exploreBusinessModelObj
                            ?.explorebusinessItemList.length ??
                        0,
                    itemBuilder: (context, index) {
                      ExplorebusinessItemModel model = exploreBusinessModelObj
                              ?.explorebusinessItemList[index] ??
                          ExplorebusinessItemModel();
                      return ExplorebusinessItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHiconLinearIndigo900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 38.v),
          ),
          Padding(
            padding: EdgeInsets.only(top: 88.v),
            child: BlocSelector<ExploreBusinessBloc, ExploreBusinessState,
                TextEditingController?>(
              selector: (state) => state.searchTwoController,
              builder: (context, searchTwoController) {
                return CustomTextFormField(
                  width: 325.h,
                  controller: searchTwoController,
                  hintText: "msg_vagan_influencers".tr,
                  hintStyle: CustomTextStyles.bodySmallInterBlack900Light,
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
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    "lbl_channel".tr,
                    style: CustomTextStyles.titleSmallBlack900Medium_3,
                  ),
                ),
                SizedBox(height: 12.v),
                Row(
                  children: [
                    CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.outlinePrimaryTL4,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPhInstagramLogo,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.outlineGray,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRiFacebookFillBlack900,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration: IconButtonStyleHelper.outlineGray,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowersRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 21.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Opacity(
              opacity: 0.7,
              child: Padding(
                padding: EdgeInsets.only(bottom: 3.v),
                child: Text(
                  "lbl_followers".tr,
                  style: CustomTextStyles.titleSmallBlack900Medium_3,
                ),
              ),
            ),
            BlocSelector<ExploreBusinessBloc, ExploreBusinessState, bool?>(
              selector: (state) => state.isSelectedSwitch,
              builder: (context, isSelectedSwitch) {
                return CustomSwitch(
                  value: isSelectedSwitch,
                  onChange: (value) {
                    context
                        .read<ExploreBusinessBloc>()
                        .add(ChangeSwitchEvent(value: value));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditTextStack(BuildContext context) {
    return Container(
      height: 8.v,
      width: 377.h,
      margin: EdgeInsets.only(left: 17.h),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 4.v,
              width: 377.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 377.h,
                      child: Divider(
                        color: appTheme.blueGray100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35.h),
                    child: BlocSelector<ExploreBusinessBloc,
                        ExploreBusinessState, TextEditingController?>(
                      selector: (state) => state.editTextController,
                      builder: (context, editTextController) {
                        return CustomTextFormField(
                          width: 49.h,
                          controller: editTextController,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.centerLeft,
                          borderDecoration:
                              TextFormFieldStyleHelper.fillPrimary,
                          fillColor: theme.colorScheme.primary,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 48.h),
              child: Row(
                children: [
                  Container(
                    height: 7.v,
                    width: 2.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                    decoration: BoxDecoration(
                      color: appTheme.deepPurple100,
                    ),
                  ),
                  Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(left: 31.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        4.h,
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

  /// Section Widget
  Widget _buildLineStack(BuildContext context) {
    return Container(
      height: 8.v,
      width: 377.h,
      margin: EdgeInsets.only(left: 17.h),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 4.v,
              width: 377.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 377.h,
                      child: Divider(
                        color: appTheme.blueGray100,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 4.v,
                      width: 49.h,
                      margin: EdgeInsets.only(left: 35.h),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 48.h),
              child: Row(
                children: [
                  Container(
                    height: 7.v,
                    width: 2.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                    decoration: BoxDecoration(
                      color: appTheme.deepPurple100,
                    ),
                  ),
                  Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(left: 31.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        4.h,
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

  /// Section Widget
  Widget _buildHennaRiddleRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTommyRodbergColumn(
              context,
              tommyRodberg: "lbl_tommy_rodberg".tr,
              followersCounter: "lbl_2837_followers".tr,
              fifty: "lbl_5_0".tr,
              price: "lbl_89_300".tr,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: _buildTommyRodbergColumn(
                context,
                tommyRodberg: "lbl_tommy_rodberg".tr,
                followersCounter: "lbl_2837_followers".tr,
                fifty: "lbl_5_0".tr,
                price: "lbl_89_300".tr,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewStack(BuildContext context) {
    return SizedBox(
      height: 270.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: _buildTommyRodbergColumn(
              context,
              tommyRodberg: "lbl_henna_riddle".tr,
              followersCounter: "lbl_2837_followers".tr,
              fifty: "lbl_5_0".tr,
              price: "lbl_89_300".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: _buildTommyRodbergColumn(
              context,
              tommyRodberg: "lbl_selina_gomase".tr,
              followersCounter: "lbl_2837_followers".tr,
              fifty: "lbl_5_0".tr,
              price: "lbl_89_300".tr,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 166.v),
              padding: EdgeInsets.symmetric(vertical: 12.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup630,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup602,
                    height: 33.v,
                    width: 36.h,
                    margin: EdgeInsets.only(
                      top: 34.v,
                      bottom: 13.v,
                    ),
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
                  Container(
                    height: 47.v,
                    width: 57.h,
                    margin: EdgeInsets.only(
                      top: 27.v,
                      bottom: 6.v,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUser2,
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 7.v),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 47.v,
                            width: 57.h,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTommyRodbergColumn(
    BuildContext context, {
    required String tommyRodberg,
    required String followersCounter,
    required String fifty,
    required String price,
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
                  imagePath: ImageConstant.imgEllipse815,
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
                      imagePath: ImageConstant.imgHiconLinearPrimary,
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
                tommyRodberg,
                style: CustomTextStyles.labelLargeBlack900Medium.copyWith(
                  color: appTheme.black900.withOpacity(0.6),
                ),
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Container(
            width: 175.h,
            margin: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    SizedBox(height: 4.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgStar110,
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
                              fifty,
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
                    price,
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
}
