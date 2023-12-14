import '../models/clienttestimonials_item_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ClienttestimonialsItemWidget extends StatelessWidget {
  ClienttestimonialsItemWidget(
    this.clienttestimonialsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ClienttestimonialsItemModel clienttestimonialsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: clienttestimonialsItemModelObj?.userImage,
                  height: 115.adaptSize,
                  width: 115.adaptSize,
                  radius: BorderRadius.circular(
                    57.h,
                  ),
                  margin: EdgeInsets.only(top: 8.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    bottom: 100.v,
                  ),
                  child: CustomIconButton(
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillPrimaryContainer,
                    child: CustomImageView(
                      imagePath: clienttestimonialsItemModelObj?.hiconLinear,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              children: [
                Opacity(
                  opacity: 0.7,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      clienttestimonialsItemModelObj.userName!,
                      style: CustomTextStyles.labelLargeBlack900Medium,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: clienttestimonialsItemModelObj?.userImage1,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  radius: BorderRadius.circular(
                    1.h,
                  ),
                  margin: EdgeInsets.only(left: 42.h),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      top: 1.v,
                    ),
                    child: Text(
                      clienttestimonialsItemModelObj.rating!,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                clienttestimonialsItemModelObj.ordersDone!,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }
}
