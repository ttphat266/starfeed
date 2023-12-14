import 'bloc/my_jobs_two_bloc.dart';
import 'models/my_jobs_two_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MyJobsTwoPage extends StatefulWidget {
  const MyJobsTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyJobsTwoPageState createState() => MyJobsTwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyJobsTwoBloc>(
      create: (context) => MyJobsTwoBloc(MyJobsTwoState(
        myJobsTwoModelObj: MyJobsTwoModel(),
      ))
        ..add(MyJobsTwoInitialEvent()),
      child: MyJobsTwoPage(),
    );
  }
}

class MyJobsTwoPageState extends State<MyJobsTwoPage>
    with AutomaticKeepAliveClientMixin<MyJobsTwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MyJobsTwoBloc, MyJobsTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillGray,
              child: Column(
                children: [
                  SizedBox(height: 25.v),
                  Expanded(
                    child: Column(
                      children: [
                        _buildPlaylist(context),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: _buildRecentOrders(
                            context,
                            johnathonDoeText: "lbl_johnathon_doe".tr,
                            loremIpsumDolorText: "msg_lorem_ipsum_dolor4".tr,
                            durationText: "msg_20s_audio_post".tr,
                            priceText: "lbl_700".tr,
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 19.v,
                    bottom: 43.v,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 19.v,
                      bottom: 43.v,
                    ),
                    child: OutlineGradientButton(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        top: 2.v,
                        right: 2.h,
                        bottom: 2.v,
                      ),
                      strokeWidth: 2.h,
                      gradient: LinearGradient(
                        begin: Alignment(-0.05, 0),
                        end: Alignment(1.16, 1.24),
                        colors: [
                          theme.colorScheme.primary,
                          appTheme.blueA400,
                        ],
                      ),
                      corners: Corners(
                        topLeft: Radius.circular(27),
                        topRight: Radius.circular(27),
                        bottomLeft: Radius.circular(27),
                        bottomRight: Radius.circular(27),
                      ),
                      child: CustomIconButton(
                        height: 54.adaptSize,
                        width: 54.adaptSize,
                        padding: EdgeInsets.all(15.h),
                        decoration: IconButtonStyleHelper.outline,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgHiconOutline5x6,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    bottom: 21.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 39.v,
                        width: 113.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Opacity(
                                opacity: 0.8,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    bottom: 4.v,
                                  ),
                                  child: Text(
                                    "lbl_johnathon_doe".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 39.v,
                                width: 113.h,
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
                      Opacity(
                        opacity: 0.4,
                        child: Container(
                          width: 214.h,
                          margin: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "msg_lorem_ipsum_dolor4".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallInterBlack9009,
                          ),
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Opacity(
                        opacity: 0.4,
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "msg_story_post_24".tr,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Opacity(
                        opacity: 0.7,
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "lbl_200".tr,
                            style: CustomTextStyles.labelMediumBlueA400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Container(
            margin: EdgeInsets.only(left: 3.h),
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlineRedA700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: _buildRecentOrders(
                    context,
                    johnathonDoeText: "lbl_johnathon_doe".tr,
                    loremIpsumDolorText: "msg_lorem_ipsum_dolor4".tr,
                    durationText: "msg_15s_video_story".tr,
                    priceText: "lbl_5002".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRecentOrders(
    BuildContext context, {
    required String johnathonDoeText,
    required String loremIpsumDolorText,
    required String durationText,
    required String priceText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 27.v,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 3.v,
                bottom: 27.v,
              ),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 2.h,
                  top: 2.v,
                  right: 2.h,
                  bottom: 2.v,
                ),
                strokeWidth: 2.h,
                gradient: LinearGradient(
                  begin: Alignment(-0.05, 0),
                  end: Alignment(1.16, 1.24),
                  colors: [
                    theme.colorScheme.primary,
                    appTheme.blueA400,
                  ],
                ),
                corners: Corners(
                  topLeft: Radius.circular(27),
                  topRight: Radius.circular(27),
                  bottomLeft: Radius.circular(27),
                  bottomRight: Radius.circular(27),
                ),
                child: CustomIconButton(
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  padding: EdgeInsets.all(14.h),
                  decoration: IconButtonStyleHelper.outline,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgHiconOutline6x6,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    johnathonDoeText,
                    style: theme.textTheme.titleSmall!.copyWith(
                      color: appTheme.black900.withOpacity(0.64),
                    ),
                  ),
                ),
                SizedBox(height: 4.v),
                Opacity(
                  opacity: 0.4,
                  child: Container(
                    width: 214.h,
                    margin: EdgeInsets.only(left: 1.h),
                    child: Text(
                      loremIpsumDolorText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallInterBlack9009.copyWith(
                        color: appTheme.black900.withOpacity(0.49),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4.v),
                Opacity(
                  opacity: 0.4,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      durationText,
                      style: theme.textTheme.labelMedium!.copyWith(
                        color: appTheme.black900.withOpacity(0.49),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3.v),
                Opacity(
                  opacity: 0.7,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      priceText,
                      style: CustomTextStyles.labelMediumBlueA400.copyWith(
                        color: appTheme.blueA400.withOpacity(0.6),
                      ),
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
}
