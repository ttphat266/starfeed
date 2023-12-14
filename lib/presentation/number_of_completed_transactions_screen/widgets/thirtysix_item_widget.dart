import '../models/thirtysix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ThirtysixItemWidget extends StatelessWidget {
  ThirtysixItemWidget(
    this.thirtysixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtysixItemModel thirtysixItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.outlinePrimaryContainer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 56.v),
            CustomImageView(
              imagePath: thirtysixItemModelObj?.cameraImage,
              height: 43.v,
              width: 46.h,
            ),
            SizedBox(height: 54.v),
            Text(
              thirtysixItemModelObj.camera!,
              style: CustomTextStyles.titleMediumPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
