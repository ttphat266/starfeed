import '../my_jobs_eight_page/widgets/userprofile3_item_widget.dart';
import 'bloc/my_jobs_eight_bloc.dart';
import 'models/my_jobs_eight_model.dart';
import 'models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MyJobsEightPage extends StatefulWidget {
  const MyJobsEightPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyJobsEightPageState createState() => MyJobsEightPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyJobsEightBloc>(
      create: (context) => MyJobsEightBloc(MyJobsEightState(
        myJobsEightModelObj: MyJobsEightModel(),
      ))
        ..add(MyJobsEightInitialEvent()),
      child: MyJobsEightPage(),
    );
  }
}

class MyJobsEightPageState extends State<MyJobsEightPage>
    with AutomaticKeepAliveClientMixin<MyJobsEightPage> {
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
                  _buildAcceptDenyFrame(context),
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
  Widget _buildAcceptDenyFrame(BuildContext context) {
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
        mainAxisSize: MainAxisSize.min,
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
              right: 7.h,
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
                    margin: EdgeInsets.only(
                      left: 1.h,
                      right: 36.h,
                    ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 83.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 5.v,
                      ),
                      decoration: AppDecoration.fillGreen.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Text(
                        "lbl_accept".tr,
                        style:
                            CustomTextStyles.titleSmallPrimaryContainerSemiBold,
                      ),
                    ),
                    Container(
                      width: 69.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 5.v,
                      ),
                      decoration: AppDecoration.fillRedA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Text(
                        "lbl_deny".tr,
                        style:
                            CustomTextStyles.titleSmallPrimaryContainerSemiBold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 11.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.outlinePrimary1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgHugeiconPrimary,
                            height: 17.adaptSize,
                            width: 17.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "lbl_view_ad".tr,
                              style: CustomTextStyles.titleSmallPrimaryMedium,
                            ),
                          ),
                        ],
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
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<MyJobsEightBloc, MyJobsEightState, MyJobsEightModel?>(
      selector: (state) => state.myJobsEightModelObj,
      builder: (context, myJobsEightModelObj) {
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
          itemCount: myJobsEightModelObj?.userprofile3ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofile3ItemModel model =
                myJobsEightModelObj?.userprofile3ItemList[index] ??
                    Userprofile3ItemModel();
            return Userprofile3ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
