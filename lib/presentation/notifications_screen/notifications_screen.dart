import 'bloc/notifications_bloc.dart';
import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationsBloc>(
      create: (context) => NotificationsBloc(NotificationsState(
        notificationsModelObj: NotificationsModel(),
      ))
        ..add(NotificationsInitialEvent()),
      child: NotificationsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<NotificationsBloc, NotificationsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildMainStack(context),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.h),
                    child: _buildAcceptedRow(
                      context,
                      acceptedMessage: "msg_tommy_rodberg_accepted".tr,
                      timeAgo: "lbl_2_days_ago".tr,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildOrderDoneRow(context),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.h),
                    child: _buildAcceptedRow(
                      context,
                      acceptedMessage: "msg_tommy_rodberg_accepted".tr,
                      timeAgo: "lbl_1_hour_ago".tr,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.h),
                    child: _buildAcceptedRow(
                      context,
                      acceptedMessage: "msg_tommy_rodberg_accepted".tr,
                      timeAgo: "lbl_1_hour_ago".tr,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.h),
                    child: _buildAcceptedRow(
                      context,
                      acceptedMessage: "msg_tommy_rodberg_accepted".tr,
                      timeAgo: "lbl_1_hour_ago".tr,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.h),
                    child: _buildAcceptedRow(
                      context,
                      acceptedMessage: "msg_tommy_rodberg_accepted".tr,
                      timeAgo: "lbl_1_hour_ago".tr,
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMainStack(BuildContext context) {
    return SizedBox(
      height: 222.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Opacity(
            opacity: 0.15,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 73.v,
                width: double.maxFinite,
                margin: EdgeInsets.only(bottom: 60.v),
                decoration: BoxDecoration(
                  color: appTheme.purpleA100.withOpacity(0.4),
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse128,
            height: 220.v,
            width: 214.h,
            alignment: Alignment.centerRight,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 36.v),
              child: Text(
                "lbl_notifications".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Opacity(
            opacity: 0.6,
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconLinear,
              height: 28.adaptSize,
              width: 28.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 12.h,
                top: 34.v,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 66.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse822,
                    height: 52.adaptSize,
                    width: 52.adaptSize,
                    radius: BorderRadius.circular(
                      26.h,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: 0.6,
                            child: SizedBox(
                              width: 308.h,
                              child: Text(
                                "msg_tommy_rodberg_deliver".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelLargeInterBlack900,
                              ),
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Opacity(
                            opacity: 0.5,
                            child: Text(
                              "lbl_1_hour_ago".tr,
                              style: CustomTextStyles.bodySmallInter,
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
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse82252x52,
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  radius: BorderRadius.circular(
                    26.h,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 9.v,
                      bottom: 9.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.6,
                          child: Text(
                            "msg_tommy_rodberg_decline".tr,
                            style: CustomTextStyles.bodyMediumBlack90013_1,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            "lbl_1_hour_ago".tr,
                            style: CustomTextStyles.bodySmallInter,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 74.v,
              width: 393.h,
              margin: EdgeInsets.only(bottom: 60.v),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  7.h,
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
    );
  }

  /// Section Widget
  Widget _buildOrderDoneRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillPurpleA,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse8222,
            height: 52.adaptSize,
            width: 52.adaptSize,
            radius: BorderRadius.circular(
              26.h,
            ),
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 301.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_your_order_is_done2".tr,
                            style: CustomTextStyles.bodyMediumBlack90013,
                          ),
                          TextSpan(
                            text: "msg_selina_now_you".tr,
                            style: CustomTextStyles.labelLargeInter,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "lbl_3_months_ago".tr,
                      style: CustomTextStyles.bodySmallInter,
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
  Widget _buildAcceptedRow(
    BuildContext context, {
    required String acceptedMessage,
    required String timeAgo,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse8221,
          height: 52.adaptSize,
          width: 52.adaptSize,
          radius: BorderRadius.circular(
            26.h,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.6,
                  child: SizedBox(
                    width: 310.h,
                    child: Text(
                      acceptedMessage,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlack90013_1.copyWith(
                        color: appTheme.black900.withOpacity(0.56),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    timeAgo,
                    style: CustomTextStyles.bodySmallInter.copyWith(
                      color: appTheme.black900.withOpacity(0.53),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
