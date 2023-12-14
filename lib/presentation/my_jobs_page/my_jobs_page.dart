import '../my_jobs_page/widgets/userprofile1_item_widget.dart';
import 'bloc/my_jobs_bloc.dart';
import 'models/my_jobs_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class MyJobsPage extends StatefulWidget {
  const MyJobsPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyJobsPageState createState() => MyJobsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyJobsBloc>(
      create: (context) => MyJobsBloc(MyJobsState(
        myJobsModelObj: MyJobsModel(),
      ))
        ..add(MyJobsInitialEvent()),
      child: MyJobsPage(),
    );
  }
}

class MyJobsPageState extends State<MyJobsPage>
    with AutomaticKeepAliveClientMixin<MyJobsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              Column(
                children: [
                  _buildPending(context),
                  SizedBox(height: 10.v),
                  _buildUserProfile(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPendingButton(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 90.h,
      text: "lbl_pending".tr,
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainerSemiBold,
    );
  }

  /// Section Widget
  Widget _buildViewAdButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 30.v,
      width: 106.h,
      text: "lbl_view_ad".tr,
      margin: EdgeInsets.only(left: 22.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgHugeiconPrimary,
          height: 17.adaptSize,
          width: 17.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL8,
      buttonTextStyle: CustomTextStyles.titleSmallPrimaryMedium,
    );
  }

  /// Section Widget
  Widget _buildPending(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 7.v,
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
              top: 14.v,
              bottom: 48.v,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 14.v,
                bottom: 48.v,
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
              left: 25.h,
              top: 2.v,
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
                Opacity(
                  opacity: 0.6,
                  child: Container(
                    width: 241.h,
                    margin: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "msg_lorem_ipsum_dolor4".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelMediumBlack900_1,
                    ),
                  ),
                ),
                SizedBox(height: 3.v),
                Opacity(
                  opacity: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "msg_story_post_24".tr,
                      style: CustomTextStyles.labelMediumBlack900Bold,
                    ),
                  ),
                ),
                SizedBox(height: 3.v),
                Opacity(
                  opacity: 0.8,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "lbl_200".tr,
                      style: CustomTextStyles.labelMediumBlueA400_1,
                    ),
                  ),
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    _buildPendingButton(context),
                    _buildViewAdButton(context),
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
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<MyJobsBloc, MyJobsState, MyJobsModel?>(
      selector: (state) => state.myJobsModelObj,
      builder: (context, myJobsModelObj) {
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
          itemCount: myJobsModelObj?.userprofile1ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofile1ItemModel model =
                myJobsModelObj?.userprofile1ItemList[index] ??
                    Userprofile1ItemModel();
            return Userprofile1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
