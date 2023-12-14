import 'bloc/my_jobs_six_bloc.dart';
import 'models/my_jobs_six_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_outlined_button.dart';

class MyJobsSixScreen extends StatelessWidget {
  const MyJobsSixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyJobsSixBloc>(
      create: (context) => MyJobsSixBloc(MyJobsSixState(
        myJobsSixModelObj: MyJobsSixModel(),
      ))
        ..add(MyJobsSixInitialEvent()),
      child: MyJobsSixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MyJobsSixBloc, MyJobsSixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildJohnathonDoeStack(context),
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
                      right: 108.h,
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
                            bottom: 4.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "lbl_see_images".tr,
                            style: CustomTextStyles.bodyLargePrimaryRegular,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgFile,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          margin: EdgeInsets.only(bottom: 3.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_see_videos".tr,
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
                        style: CustomTextStyles.labelLargeInterBlack900Medium_2,
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
                        style: CustomTextStyles.labelLargeInterBlack900Medium_2,
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
                        style: CustomTextStyles.labelLargeInterBlack900Medium_2,
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
                        style: CustomTextStyles.labelLargeInterBlack900Medium_2,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgBottomBarGray100,
                    height: 100.v,
                    width: 428.h,
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
  Widget _buildJohnathonDoeStack(BuildContext context) {
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
                    imagePath: ImageConstant.imgEllipse155,
                    height: 220.v,
                    width: 214.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Opacity(
                      opacity: 0.4,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 86.v,
                          right: 82.h,
                        ),
                        child: Text(
                          "lbl_chat".tr,
                          style: CustomTextStyles.titleSmallBlack900Medium,
                        ),
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
                top: 18.v,
              ),
              child: Row(
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHiconLinear,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      margin: EdgeInsets.only(
                        top: 11.v,
                        bottom: 8.v,
                      ),
                    ),
                  ),
                  CustomOutlinedButton(
                    height: 47.v,
                    width: 132.h,
                    text: "lbl_johnathon_doe".tr,
                    margin: EdgeInsets.only(left: 5.h),
                    buttonStyle: CustomButtonStyles.outlineRedATL10,
                    buttonTextStyle: theme.textTheme.titleSmall!,
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
}
