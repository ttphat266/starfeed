import 'bloc/my_jobs_three_bloc.dart';
import 'models/my_jobs_three_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:phat_s_application1/core/app_export.dart';

class MyJobsThreeScreen extends StatelessWidget {
  const MyJobsThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyJobsThreeBloc>(
      create: (context) => MyJobsThreeBloc(MyJobsThreeState(
        myJobsThreeModelObj: MyJobsThreeModel(),
      ))
        ..add(MyJobsThreeInitialEvent()),
      child: MyJobsThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MyJobsThreeBloc, MyJobsThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildChatStack(context),
                    SizedBox(height: 7.v),
                    Align(
                      alignment: Alignment.center,
                      child: Opacity(
                        opacity: 0.6,
                        child: Container(
                          width: 361.h,
                          margin: EdgeInsets.only(
                            left: 30.h,
                            right: 36.h,
                          ),
                          child: Text(
                            "msg_lorem_ipsum_dolor2".tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallInterBlack90012_4,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "lbl_content".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30.h,
                        right: 106.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgHugeIcon,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                              top: 2.v,
                              bottom: 3.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "lbl_add_images".tr,
                              style: CustomTextStyles.bodyLargePrimaryRegular,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgFile,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_add_videos".tr,
                              style: CustomTextStyles.bodyLargePrimaryRegular,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 31.v),
                    Opacity(
                      opacity: 0.6,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.h),
                        child: Text(
                          "msg_service_type_video".tr,
                          style:
                              CustomTextStyles.labelLargeInterBlack900Medium_2,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Opacity(
                      opacity: 0.6,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.h),
                        child: Text(
                          "msg_post_type_story".tr,
                          style:
                              CustomTextStyles.labelLargeInterBlack900Medium_2,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Opacity(
                      opacity: 0.6,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.h),
                        child: Text(
                          "msg_duration_of_post".tr,
                          style:
                              CustomTextStyles.labelLargeInterBlack900Medium_2,
                        ),
                      ),
                    ),
                    SizedBox(height: 44.v),
                    Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "msg_order_delivery_date".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Opacity(
                      opacity: 0.6,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.h),
                        child: Text(
                          "msg_15_07_2023_to_30_07_2023".tr,
                          style:
                              CustomTextStyles.labelLargeInterBlack900Medium_2,
                        ),
                      ),
                    ),
                    SizedBox(height: 269.v),
                    _buildSpacerRow(context),
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
  Widget _buildChatStack(BuildContext context) {
    return SizedBox(
      height: 235.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
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
                    imagePath: ImageConstant.imgEllipse121,
                    height: 220.v,
                    width: 214.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 47.v,
                      width: 132.h,
                      margin: EdgeInsets.only(
                        top: 76.v,
                        right: 22.h,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Opacity(
                              opacity: 0.4,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 40.h,
                                  top: 10.v,
                                ),
                                child: Text(
                                  "lbl_chat".tr,
                                  style:
                                      CustomTextStyles.titleSmallBlack900Medium,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 47.v,
                              width: 132.h,
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
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 23.h,
                top: 29.v,
              ),
              child: Row(
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
                    opacity: 0.8,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 6.v,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "lbl_sujan_lopese".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 70.v),
              child: SizedBox(
                width: double.maxFinite,
                child: Divider(
                  color: theme.colorScheme.primaryContainer.withOpacity(1),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 30.h,
                bottom: 68.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_timeline".tr,
                    style: CustomTextStyles.titleSmallPrimaryMedium_1,
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 174.h,
                    child: Divider(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 37.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg_order_requirements".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
              opacity: 0.6,
              child: SizedBox(
                width: 361.h,
                child: Text(
                  "msg_lorem_ipsum_dolor2".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallInterBlack90012_4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSpacerRow(BuildContext context) {
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
