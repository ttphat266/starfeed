import '../models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget(
    this.userprofilesectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilesectionItemModel userprofilesectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineBlack9001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: userprofilesectionItemModelObj?.userImage,
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
                        userprofilesectionItemModelObj.userName!,
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
                            child: Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text(
                                userprofilesectionItemModelObj.postType!,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.7,
                            child: Text(
                              userprofilesectionItemModelObj.postPrice!,
                              style: CustomTextStyles.labelMediumBlueA400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Opacity(
                      opacity: 0.4,
                      child: Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          userprofilesectionItemModelObj.postDate!,
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
    );
  }
}
