import '../models/userprofilesection1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Userprofilesection1ItemWidget extends StatelessWidget {
  Userprofilesection1ItemWidget(
    this.userprofilesection1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilesection1ItemModel userprofilesection1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
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
                top: 4.v,
                bottom: 13.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 2.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.outline1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: CustomImageView(
                imagePath: userprofilesection1ItemModelObj?.userImage,
                height: 5.v,
                width: 6.h,
                alignment: Alignment.topCenter,
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
                      userprofilesection1ItemModelObj.userName!,
                      style: CustomTextStyles.interBlack900Bold3,
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: SizedBox(
                      width: 61.h,
                      child: Text(
                        userprofilesection1ItemModelObj.userDescription!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.interBlack900Medium2_1,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: Text(
                      userprofilesection1ItemModelObj.storyPost!,
                      style: CustomTextStyles.interBlack900Bold,
                    ),
                  ),
                  Opacity(
                    opacity: 0.8,
                    child: Text(
                      userprofilesection1ItemModelObj.storyPrice!,
                      style: CustomTextStyles.interBlueA400Medium2,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Container(
                    width: 56.h,
                    margin: EdgeInsets.only(right: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 23.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillGray40001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3,
                          ),
                          child: Text(
                            userprofilesection1ItemModelObj.status!,
                            style: CustomTextStyles.interPrimaryContainer,
                          ),
                        ),
                        CustomOutlinedButton(
                          height: 8.v,
                          width: 27.h,
                          text: "lbl_view_ad".tr,
                          buttonTextStyle: CustomTextStyles.interPrimaryMedium3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
