import '../models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 13.adaptSize,
            width: 13.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 9.v,
            ),
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outline1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: CustomImageView(
              imagePath: userprofile2ItemModelObj?.userImage,
              height: 5.v,
              width: 6.h,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    userprofile2ItemModelObj.username!,
                    style: CustomTextStyles.interBlack900Bold3_1,
                  ),
                ),
                Opacity(
                  opacity: 0.4,
                  child: SizedBox(
                    width: 53.h,
                    child: Text(
                      userprofile2ItemModelObj.description!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.interBlack900Regular2,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.4,
                  child: Text(
                    userprofile2ItemModelObj.storyPost!,
                    style: CustomTextStyles.interBlack900Medium2,
                  ),
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    userprofile2ItemModelObj.price!,
                    style: CustomTextStyles.interBlueA400Medium,
                  ),
                ),
                SizedBox(height: 1.v),
                Row(
                  children: [
                    Container(
                      width: 13.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillGreen.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3,
                      ),
                      child: Text(
                        userprofile2ItemModelObj.acceptButton!,
                        style: CustomTextStyles.interPrimaryContainerSemiBold,
                      ),
                    ),
                    Container(
                      width: 11.h,
                      margin: EdgeInsets.only(left: 2.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillRedA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3,
                      ),
                      child: Text(
                        userprofile2ItemModelObj.denyButton!,
                        style: CustomTextStyles.interPrimaryContainerSemiBold,
                      ),
                    ),
                    CustomOutlinedButton(
                      height: 5.v,
                      width: 16.h,
                      text: "lbl_view_ad".tr,
                      margin: EdgeInsets.only(left: 1.h),
                      buttonTextStyle: CustomTextStyles.interPrimaryMedium,
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
}
