import '../explore_influencer_screen/widgets/clienttestimonials_item_widget.dart';
import 'bloc/explore_influencer_bloc.dart';
import 'models/clienttestimonials_item_model.dart';
import 'models/explore_influencer_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class ExploreInfluencerScreen extends StatelessWidget {
  const ExploreInfluencerScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreInfluencerBloc>(
      create: (context) => ExploreInfluencerBloc(ExploreInfluencerState(
        exploreInfluencerModelObj: ExploreInfluencerModel(),
      ))
        ..add(ExploreInfluencerInitialEvent()),
      child: ExploreInfluencerScreen(),
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
                _buildPlaylist(context),
                SizedBox(height: 22.v),
                _buildClientTestimonials(context),
                SizedBox(height: 10.v),
                _buildBottomBar(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return SizedBox(
      height: 370.v,
      width: 422.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 215.v,
              width: 206.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse1215x206,
                    height: 215.v,
                    width: 206.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 32.v,
                        right: 11.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 36.v,
                            width: 132.h,
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.v),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Opacity(
                                          opacity: 0.3,
                                          child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgHugeIconBlack90024x24,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgHiconLinearBlack900,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                        ),
                                        Opacity(
                                          opacity: 0.3,
                                          child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgHiconLinear24x24,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgFolder,
                                          height: 24.v,
                                          width: 27.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: 36.v,
                                    width: 32.h,
                                    margin: EdgeInsets.only(right: 34.h),
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
                          SizedBox(height: 38.v),
                          Opacity(
                            opacity: 0.3,
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgHiconLinearBlack90024x24,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 21.h),
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
            padding: EdgeInsets.only(right: 12.h),
            child: _buildUserProfile(
              context,
              textTommyRodberg: "lbl_tommy_rodberg".tr,
              textFifty: "lbl_5_0".tr,
              textOrdersDone: "lbl_500_orders_done".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildUserProfile(
              context,
              textTommyRodberg: "lbl_tommy_rodberg".tr,
              textFifty: "lbl_5_0".tr,
              textOrdersDone: "lbl_20_orders_done".tr,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 41.v),
              child: Text(
                "lbl_explore".tr,
                style: CustomTextStyles.titleMediumMedium,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 101.v,
            ),
            child: BlocSelector<ExploreInfluencerBloc, ExploreInfluencerState,
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
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 47.v,
              width: 57.h,
              margin: EdgeInsets.only(top: 23.v),
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.outlineRedA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgHiconLinearIndigo900,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.bottomLeft,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: BlocSelector<ExploreInfluencerBloc, ExploreInfluencerState,
          ExploreInfluencerModel?>(
        selector: (state) => state.exploreInfluencerModelObj,
        builder: (context, exploreInfluencerModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 202.v,
              crossAxisCount: 2,
              mainAxisSpacing: 10.h,
              crossAxisSpacing: 10.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                exploreInfluencerModelObj?.clienttestimonialsItemList.length ??
                    0,
            itemBuilder: (context, index) {
              ClienttestimonialsItemModel model = exploreInfluencerModelObj
                      ?.clienttestimonialsItemList[index] ??
                  ClienttestimonialsItemModel();
              return ClienttestimonialsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      height: 213.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: _buildRecentOrders(
              context,
              textTommyRodberg: "lbl_tommy_rodberg".tr,
              textFifty: "lbl_5_0".tr,
              textOrdersDone: "lbl_500_orders_done".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: _buildRecentOrders(
              context,
              textTommyRodberg: "lbl_tommy_rodberg".tr,
              textFifty: "lbl_5_0".tr,
              textOrdersDone: "lbl_20_orders_done".tr,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 100.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup200,
                    height: 104.v,
                    width: 428.h,
                    alignment: Alignment.bottomCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(51.h, 46.v, 43.h, 3.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 47.v,
                            width: 57.h,
                            margin: EdgeInsets.only(bottom: 4.v),
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
                          Container(
                            height: 47.v,
                            width: 57.h,
                            margin: EdgeInsets.only(top: 4.v),
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
    );
  }

  /// Common widget
  Widget _buildUserProfile(
    BuildContext context, {
    required String textTommyRodberg,
    required String textFifty,
    required String textOrdersDone,
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
                  margin: EdgeInsets.only(top: 8.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    bottom: 100.v,
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
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              children: [
                Opacity(
                  opacity: 0.7,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      textTommyRodberg,
                      style: CustomTextStyles.labelLargeBlack900Medium.copyWith(
                        color: appTheme.black900.withOpacity(0.6),
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgStar124,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  radius: BorderRadius.circular(
                    1.h,
                  ),
                  margin: EdgeInsets.only(left: 42.h),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      top: 1.v,
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
          ),
          SizedBox(height: 3.v),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                textOrdersDone,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.black900.withOpacity(0.53),
                ),
              ),
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRecentOrders(
    BuildContext context, {
    required String textTommyRodberg,
    required String textFifty,
    required String textOrdersDone,
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
                  margin: EdgeInsets.only(top: 8.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    bottom: 100.v,
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
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              children: [
                Opacity(
                  opacity: 0.7,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      textTommyRodberg,
                      style: CustomTextStyles.labelLargeBlack900Medium.copyWith(
                        color: appTheme.black900.withOpacity(0.6),
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgStar130,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  radius: BorderRadius.circular(
                    1.h,
                  ),
                  margin: EdgeInsets.only(left: 42.h),
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
          ),
          SizedBox(height: 4.v),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                textOrdersDone,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.black900.withOpacity(0.53),
                ),
              ),
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }
}
