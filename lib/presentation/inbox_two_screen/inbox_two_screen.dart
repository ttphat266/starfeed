import 'bloc/inbox_two_bloc.dart';
import 'models/inbox_two_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';

class InboxTwoScreen extends StatelessWidget {
  const InboxTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InboxTwoBloc>(
      create: (context) => InboxTwoBloc(InboxTwoState(
        inboxTwoModelObj: InboxTwoModel(),
      ))
        ..add(InboxTwoInitialEvent()),
      child: InboxTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InboxTwoBloc, InboxTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildPlaylist(context),
                  SizedBox(height: 2.v),
                  _buildClientTestimonials(context),
                  SizedBox(height: 6.v),
                  _buildReviews(context),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: _buildDoctorReviews(
                      context,
                      followingLabel: "lbl_fab_yola".tr,
                      messageLabel: "msg_you_did_not_lmao".tr,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: _buildDoctorReviews(
                      context,
                      followingLabel: "lbl_leonardi_bert".tr,
                      messageLabel: "msg_you_did_not_lmao".tr,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildRecentOrders(context),
                  SizedBox(height: 13.v),
                  _buildUserProfile(context),
                  SizedBox(height: 14.v),
                  _buildInboxTwo(context),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return SizedBox(
      height: 220.v,
      width: 410.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 220.v,
              width: 214.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse156,
                    height: 220.v,
                    width: 214.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 31.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Opacity(
                                opacity: 0.7,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgHiconBoldMenuGray90001,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize,
                                ),
                              ),
                              Opacity(
                                opacity: 0.7,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgMingcutePencil2Fill,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize,
                                  margin: EdgeInsets.only(left: 19.h),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 49.v),
                          Text(
                            "lbl_filter".tr,
                            style: CustomTextStyles.labelLargeInterBlueA400,
                          ),
                          SizedBox(height: 42.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_requested_2".tr,
                              style:
                                  CustomTextStyles.labelLargeInterBluegray400,
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
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 40.h,
                bottom: 27.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_primary".tr,
                    style: CustomTextStyles.labelLargeInterPrimary,
                  ),
                  SizedBox(height: 5.v),
                  SizedBox(
                    width: 80.h,
                    child: Divider(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(12.h, 97.v, 79.h, 82.v),
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineBlack9005.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSearch2,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 11.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_th".tr,
                      style: CustomTextStyles.bodySmallInterBlack900Light12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 38.v),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHiconLinear,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 4.v,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "lbl_whatsonrap".tr,
                        style: CustomTextStyles.titleMediumBlack900Medium,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHiconOutlineBlack9002x2,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      margin: EdgeInsets.only(
                        left: 3.h,
                        top: 7.v,
                        bottom: 11.v,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 176.h,
                bottom: 36.v,
              ),
              child: Text(
                "lbl_offers".tr,
                style: CustomTextStyles.labelLargeInterBluegray400,
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
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse269x69,
            height: 69.adaptSize,
            width: 69.adaptSize,
            radius: BorderRadius.circular(
              34.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 12.v,
              bottom: 12.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Opacity(
                      opacity: 0.8,
                      child: Text(
                        "lbl_leonard_lotea".tr,
                        style: CustomTextStyles.titleSmallSemiBold,
                      ),
                    ),
                    Container(
                      width: 20.h,
                      margin: EdgeInsets.only(
                        left: 9.h,
                        bottom: 3.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillPrimary1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Text(
                        "lbl_1".tr,
                        style: CustomTextStyles
                            .labelMediumProximaNovaPrimaryContainer,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.v),
                Opacity(
                  opacity: 0.6,
                  child: Text(
                    "lbl_shared_a_video".tr,
                    style: CustomTextStyles.bodyMediumBlack900,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconOutlineBlack9005x5,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(
                top: 24.v,
                bottom: 22.v,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviews(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 23.h,
        right: 17.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineRedA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse29,
            height: 69.adaptSize,
            width: 69.adaptSize,
            radius: BorderRadius.circular(
              34.h,
            ),
            margin: EdgeInsets.only(top: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 13.v,
              bottom: 13.v,
            ),
            child: _buildFollowing(
              context,
              titleText: "lbl_luta_lia".tr,
              primaryText: "lbl_2".tr,
              messageText: "msg_uxsantos_look_at".tr,
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconOutlineBlack9005x5,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(
                top: 24.v,
                right: 6.h,
                bottom: 24.v,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse212,
            height: 69.adaptSize,
            width: 69.adaptSize,
            radius: BorderRadius.circular(
              34.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 11.v,
              bottom: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Opacity(
                      opacity: 0.8,
                      child: Text(
                        "lbl_pailo_arbit".tr,
                        style: CustomTextStyles.titleSmallSemiBold,
                      ),
                    ),
                    Container(
                      width: 24.h,
                      margin: EdgeInsets.only(left: 9.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillPrimary1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Text(
                        "lbl_4".tr,
                        style: CustomTextStyles
                            .labelMediumMontserratPrimaryContainer,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.v),
                Opacity(
                  opacity: 0.6,
                  child: Text(
                    "msg_lmaoo_this_one_had".tr,
                    style: CustomTextStyles.bodyMediumBlack900,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconOutlineBlack9005x5,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(
                top: 22.v,
                bottom: 24.v,
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
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse213,
            height: 69.adaptSize,
            width: 69.adaptSize,
            radius: BorderRadius.circular(
              34.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 13.v,
              bottom: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    "lbl_sujan_sujan".tr,
                    style: CustomTextStyles.titleSmallSemiBold,
                  ),
                ),
                SizedBox(height: 8.v),
                Opacity(
                  opacity: 0.6,
                  child: Text(
                    "msg_no_you_have_to_do".tr,
                    style: CustomTextStyles.bodyMediumBlack900,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconOutlineBlack9005x5,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(
                top: 22.v,
                bottom: 24.v,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInboxTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse29,
            height: 69.adaptSize,
            width: 69.adaptSize,
            radius: BorderRadius.circular(
              34.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 12.v,
              bottom: 12.v,
            ),
            child: _buildFollowing(
              context,
              titleText: "lbl_luta_lia".tr,
              primaryText: "lbl_2".tr,
              messageText: "msg_uxsantos_look_at".tr,
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconOutlineBlack9005x5,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(
                top: 22.v,
                bottom: 24.v,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      height: 121.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse210,
            height: 69.adaptSize,
            width: 69.adaptSize,
            radius: BorderRadius.circular(
              34.h,
            ),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 30.h),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(124.h, 11.v, 30.h, 64.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFollowing1(
                    context,
                    fabYolaText: "lbl_fab_yola".tr,
                    youDidNotLmaoText: "msg_you_did_not_lmao".tr,
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHiconOutlineBlack9005x5,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      margin: EdgeInsets.only(
                        top: 10.v,
                        bottom: 12.v,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBottomBarGray100,
            height: 100.v,
            width: 428.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDoctorReviews(
    BuildContext context, {
    required String followingLabel,
    required String messageLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse211,
          height: 69.adaptSize,
          width: 69.adaptSize,
          radius: BorderRadius.circular(
            34.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 25.h,
            top: 11.v,
            bottom: 11.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                opacity: 0.8,
                child: Text(
                  followingLabel,
                  style: CustomTextStyles.titleSmallGray90001.copyWith(
                    color: appTheme.gray90001.withOpacity(0.64),
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              Opacity(
                opacity: 0.6,
                child: Text(
                  messageLabel,
                  style: CustomTextStyles.bodyMediumGray90001.copyWith(
                    color: appTheme.gray90001.withOpacity(0.56),
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Opacity(
          opacity: 0.4,
          child: CustomImageView(
            imagePath: ImageConstant.imgHiconOutlineBlack9005x5,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(
              top: 12.v,
              bottom: 34.v,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFollowing(
    BuildContext context, {
    required String titleText,
    required String primaryText,
    required String messageText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Opacity(
              opacity: 0.8,
              child: Text(
                titleText,
                style: CustomTextStyles.titleSmallSemiBold.copyWith(
                  color: appTheme.black900.withOpacity(0.64),
                ),
              ),
            ),
            Container(
              width: 23.h,
              margin: EdgeInsets.only(
                left: 9.h,
                bottom: 3.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillPrimary1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Text(
                primaryText,
                style: CustomTextStyles.labelMediumProximaNovaPrimaryContainer
                    .copyWith(
                  color: theme.colorScheme.primaryContainer.withOpacity(1),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 7.v),
        Opacity(
          opacity: 0.6,
          child: Text(
            messageText,
            style: CustomTextStyles.bodyMediumBlack900.copyWith(
              color: appTheme.black900.withOpacity(0.56),
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFollowing1(
    BuildContext context, {
    required String fabYolaText,
    required String youDidNotLmaoText,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.8,
          child: Text(
            fabYolaText,
            style: CustomTextStyles.titleSmallSemiBold.copyWith(
              color: appTheme.black900.withOpacity(0.64),
            ),
          ),
        ),
        Opacity(
          opacity: 0.6,
          child: Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Text(
              youDidNotLmaoText,
              style: CustomTextStyles.bodyMediumBlack900.copyWith(
                color: appTheme.black900.withOpacity(0.56),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
