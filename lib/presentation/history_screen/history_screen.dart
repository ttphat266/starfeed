import '../history_screen/widgets/userprofilelist_item_widget.dart';
import 'bloc/history_bloc.dart';
import 'models/history_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryBloc>(
      create: (context) => HistoryBloc(HistoryState(
        historyModelObj: HistoryModel(),
      ))
        ..add(HistoryInitialEvent()),
      child: HistoryScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSeventyStack(context),
                  SizedBox(height: 10.v),
                  _buildUserProfileList(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyStack(BuildContext context) {
    return SizedBox(
      height: 247.v,
      width: 410.h,
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
                    imagePath: ImageConstant.imgEllipse112,
                    height: 220.v,
                    width: 214.h,
                    alignment: Alignment.center,
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSearch2,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 36.v,
                        right: 36.h,
                      ),
                    ),
                  ),
                ],
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
              margin: EdgeInsets.only(top: 28.v),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 32.v),
              child: Text(
                "lbl_order_history".tr,
                style: CustomTextStyles.titleMediumMedium_2,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(17.h, 85.v, 30.h, 85.v),
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
                    imagePath: ImageConstant.imgEllipse811,
                    height: 54.adaptSize,
                    width: 54.adaptSize,
                    radius: BorderRadius.circular(
                      27.h,
                    ),
                    margin: EdgeInsets.symmetric(vertical: 3.v),
                  ),
                  Padding(
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
                            "lbl_johnathon_doe".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Opacity(
                          opacity: 0.4,
                          child: Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "msg_1_image_story_post".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Opacity(
                          opacity: 0.4,
                          child: Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "lbl_20_jun_2023".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 56.h,
                    margin: EdgeInsets.only(
                      top: 20.v,
                      right: 1.h,
                      bottom: 21.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillGray40001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Text(
                      "lbl_pending".tr,
                      style: theme.textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                left: 17.h,
                top: 171.v,
                right: 30.h,
              ),
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
                    imagePath: ImageConstant.imgEllipse812,
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
                              "lbl_johnathon_doe".tr,
                              style: theme.textTheme.titleSmall,
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
                                    "msg_1_video_story_post".tr,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                    "lbl_200".tr,
                                    style: CustomTextStyles.labelMediumBlueA400,
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
                                "lbl_20_jun_2023".tr,
                                style: theme.textTheme.labelMedium,
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

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 17.h,
        right: 30.h,
      ),
      child: BlocSelector<HistoryBloc, HistoryState, HistoryModel?>(
        selector: (state) => state.historyModelObj,
        builder: (context, historyModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 10.v,
              );
            },
            itemCount: historyModelObj?.userprofilelistItemList.length ?? 0,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model =
                  historyModelObj?.userprofilelistItemList[index] ??
                      UserprofilelistItemModel();
              return UserprofilelistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
