import '../models/explorebusiness_item_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ExplorebusinessItemWidget extends StatelessWidget {
  ExplorebusinessItemWidget(
    this.explorebusinessItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExplorebusinessItemModel explorebusinessItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125.h,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: 125.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillPrimary2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Text(
              explorebusinessItemModelObj.frame!,
              style: CustomTextStyles.labelLargeInterPrimaryContainer,
            ),
          ),
        ),
      ),
    );
  }
}
