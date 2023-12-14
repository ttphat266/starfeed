import '../models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding: EdgeInsets.all(13.h),
                  decoration: IconButtonStyleHelper.outline,
                  child: CustomImageView(
                    imagePath: userprofile3ItemModelObj?.dynamicButton,
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
                    userprofile3ItemModelObj.dynamicName!,
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
                      userprofile3ItemModelObj.dynamicDescription!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelMediumBlack900_1,
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                Opacity(
                  opacity: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      userprofile3ItemModelObj.dynamicPost!,
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
                      userprofile3ItemModelObj.dynamicPrice!,
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
                        userprofile3ItemModelObj.dynamicAccept!,
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
                        userprofile3ItemModelObj.dynamicDeny!,
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
                              userprofile3ItemModelObj.dynamicText!,
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
}
