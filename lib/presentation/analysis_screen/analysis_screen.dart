import 'bloc/analysis_bloc.dart';
import 'models/analysis_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:phat_s_application1/core/app_export.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AnalysisBloc>(
      create: (context) => AnalysisBloc(AnalysisState(
        analysisModelObj: AnalysisModel(),
      ))
        ..add(AnalysisInitialEvent()),
      child: AnalysisScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AnalysisBloc, AnalysisState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildAnalysisSection(context),
                    SizedBox(height: 6.v),
                    _buildResponseRateSection(context),
                    SizedBox(height: 45.v),
                    _buildEarningsSection(context),
                    SizedBox(height: 23.v),
                    _buildAvailableForWithdrawSection(context),
                    SizedBox(height: 27.v),
                    _buildToDosSection(context),
                    SizedBox(height: 23.v),
                    _buildAboutRunningOrdersSection(context),
                    SizedBox(height: 78.v),
                    _buildSpacerSection(context),
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
  Widget _buildAnalysisSection(BuildContext context) {
    return SizedBox(
      height: 236.v,
      width: 409.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1235x236,
            height: 235.v,
            width: 236.h,
            alignment: Alignment.centerRight,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 163.h,
                top: 38.v,
              ),
              child: Text(
                "lbl_analysis".tr,
                style: CustomTextStyles.titleMediumMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 100.v,
              ),
              child: Text(
                "msg_here_s_how_you_re".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "",
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 156.h),
              child: Text(
                "",
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 33.h),
              child: Text(
                "",
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
              margin: EdgeInsets.only(top: 34.v),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildResponseRateSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_response_rate".tr,
            style: CustomTextStyles.bodySmallInterBlack90012_2,
          ),
          Spacer(
            flex: 54,
          ),
          Text(
            "msg_order_completion".tr,
            style: CustomTextStyles.bodySmallInterBlack90012_2,
          ),
          Spacer(
            flex: 45,
          ),
          Text(
            "msg_positive_ratings".tr,
            style: CustomTextStyles.bodySmallInterBlack90012_2,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEarningsSection(BuildContext context) {
    return SizedBox(
      height: 37.v,
      width: 427.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 2.v),
              padding: EdgeInsets.symmetric(
                horizontal: 26.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillGray200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 12.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "lbl_earnings".tr,
                        style: CustomTextStyles.titleMediumBlack900_2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_details".tr,
                      style: CustomTextStyles.labelMediumPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 36.v,
              width: 56.h,
              margin: EdgeInsets.only(right: 11.h),
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
    );
  }

  /// Section Widget
  Widget _buildAvailableForWithdrawSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 27.h),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBlack9006.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(right: 66.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "msg_available_for_withdraw".tr,
                    style: CustomTextStyles.bodySmallInterBlack900_3,
                  ),
                ),
                Text(
                  "msg_earning_in_august".tr,
                  style: CustomTextStyles.bodySmallInterBlack900_3,
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 88.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_4516".tr,
                  style: CustomTextStyles.titleMediumPrimary_1,
                ),
                Text(
                  "lbl_10002".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(right: 85.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "msg_average_selling".tr,
                    style: CustomTextStyles.bodySmallInterBlack900_3,
                  ),
                ),
                Text(
                  "lbl_active_orders".tr,
                  style: CustomTextStyles.bodySmallInterBlack900_3,
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 59.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_400".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "lbl_5_3000".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(right: 82.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_payment_being_cleared".tr,
                  style: CustomTextStyles.bodySmallInterBlack900_3,
                ),
                Text(
                  "lbl_cancel_orders".tr,
                  style: CustomTextStyles.bodySmallInterBlack900_3,
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 132.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_700".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "lbl_0".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildToDosSection(BuildContext context) {
    return Container(
      width: 427.h,
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillGray200,
      child: Text(
        "lbl_to_dos".tr,
        style: theme.textTheme.titleMedium,
      ),
    );
  }

  /// Section Widget
  Widget _buildAboutRunningOrdersSection(BuildContext context) {
    return Container(
      width: 374.h,
      margin: EdgeInsets.only(
        left: 30.h,
        right: 24.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack9006.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_about_running_orders".tr,
            style: CustomTextStyles.labelLargeInterMedium_2,
          ),
          SizedBox(height: 3.v),
          Container(
            width: 296.h,
            margin: EdgeInsets.only(right: 55.h),
            child: Text(
              "msg_lorem_ipsum_dolor6".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallInterBlack900_4,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "msg_about_running_orders2".tr,
            style: CustomTextStyles.labelLargeInterMedium_2,
          ),
          SizedBox(height: 3.v),
          Container(
            width: 296.h,
            margin: EdgeInsets.only(right: 55.h),
            child: Text(
              "msg_lorem_ipsum_dolor6".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallInterBlack900_4,
            ),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSpacerSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
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
    );
  }
}
