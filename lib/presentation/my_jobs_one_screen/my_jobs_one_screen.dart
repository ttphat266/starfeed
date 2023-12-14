import 'bloc/my_jobs_one_bloc.dart';
import 'models/my_jobs_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_outlined_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class MyJobsOneScreen extends StatelessWidget {
  const MyJobsOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyJobsOneBloc>(
      create: (context) => MyJobsOneBloc(MyJobsOneState(
        myJobsOneModelObj: MyJobsOneModel(),
      ))
        ..add(MyJobsOneInitialEvent()),
      child: MyJobsOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 666.v,
                width: double.maxFinite,
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
                              imagePath: ImageConstant.imgEllipse120,
                              height: 220.v,
                              width: 214.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 86.v,
                                  right: 24.h,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "lbl_chat".tr,
                                      style: CustomTextStyles
                                          .titleSmallPrimaryMedium_1,
                                    ),
                                    SizedBox(height: 3.v),
                                    SizedBox(
                                      width: 148.h,
                                      child: Divider(
                                        color: theme.colorScheme.primary,
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
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 23.h,
                          top: 22.v,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: 0.6,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgHiconLinear,
                                height: 28.adaptSize,
                                width: 28.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 7.v,
                                  bottom: 12.v,
                                ),
                              ),
                            ),
                            _buildSujanLopeseButton(context),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 70.v),
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                            color: theme.colorScheme.primaryContainer
                                .withOpacity(1),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Opacity(
                        opacity: 0.4,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 88.h,
                            top: 86.v,
                          ),
                          child: Text(
                            "lbl_timeline".tr,
                            style: CustomTextStyles.titleSmallBlack900Medium,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 22.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 151.h),
                              child: Text(
                                "lbl_16_44".tr,
                                style: CustomTextStyles
                                    .labelLargeInterBlack900Medium13,
                              ),
                            ),
                            SizedBox(height: 12.v),
                            _buildMessageEditText(context),
                            SizedBox(height: 6.v),
                            Container(
                              width: 185.h,
                              margin: EdgeInsets.only(
                                left: 13.h,
                                right: 162.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 6.v,
                              ),
                              decoration: AppDecoration.fillGray20001.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL101,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 3.v),
                                  Opacity(
                                    opacity: 0.7,
                                    child: Text(
                                      "msg_how_are_you_doing".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 13.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildItsmorninginDhakavalueEditText(context),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRead,
                                    height: 17.adaptSize,
                                    width: 17.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 5.h,
                                      top: 19.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 11.v),
                            Container(
                              margin: EdgeInsets.only(
                                left: 13.h,
                                right: 162.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.h,
                                vertical: 6.v,
                              ),
                              decoration: AppDecoration.fillGray20001.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL101,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Opacity(
                                    opacity: 0.7,
                                    child: Container(
                                      width: 171.h,
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        "msg_what_is_the_most".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  _buildIthinktoptwoareButton(context),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRead,
                                    height: 17.adaptSize,
                                    width: 17.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 5.h,
                                      top: 17.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 2.v),
                            _buildImages(context),
                            SizedBox(height: 13.v),
                            Container(
                              margin: EdgeInsets.only(
                                left: 25.h,
                                right: 150.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.h,
                                vertical: 6.v,
                              ),
                              decoration: AppDecoration.fillGray20001.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL101,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Opacity(
                                    opacity: 0.7,
                                    child: Container(
                                      width: 171.h,
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        "msg_what_is_the_most2".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse5329x29,
                      height: 29.adaptSize,
                      width: 29.adaptSize,
                      radius: BorderRadius.circular(
                        14.h,
                      ),
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: 23.h,
                        top: 238.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse5329x29,
                      height: 29.adaptSize,
                      width: 29.adaptSize,
                      radius: BorderRadius.circular(
                        14.h,
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        left: 23.h,
                        bottom: 285.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse5329x29,
                      height: 29.adaptSize,
                      width: 29.adaptSize,
                      radius: BorderRadius.circular(
                        14.h,
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        left: 34.h,
                        bottom: 20.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 46.v),
              _buildInstagramRow(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSujanLopeseButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 47.v,
      width: 126.h,
      text: "lbl_sujan_lopese".tr,
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.outlineRedATL10,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildMessageEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 13.h),
      child:
          BlocSelector<MyJobsOneBloc, MyJobsOneState, TextEditingController?>(
        selector: (state) => state.messageEditTextController,
        builder: (context, messageEditTextController) {
          return CustomTextFormField(
            width: 135.h,
            controller: messageEditTextController,
            hintText: "lbl_hello_rome".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 7.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGray,
            fillColor: appTheme.gray20001,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildItsmorninginDhakavalueEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.v),
      child:
          BlocSelector<MyJobsOneBloc, MyJobsOneState, TextEditingController?>(
        selector: (state) => state.itsmorninginDhakavalueEditTextController,
        builder: (context, itsmorninginDhakavalueEditTextController) {
          return CustomTextFormField(
            width: 207.h,
            controller: itsmorninginDhakavalueEditTextController,
            hintText: "msg_it_s_morning_in".tr,
            hintStyle: CustomTextStyles.bodyMediumSFProTextBlack900,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 7.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillDeepPurpleA,
            fillColor: appTheme.deepPurpleA100,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildIthinktoptwoareButton(BuildContext context) {
    return CustomElevatedButton(
      height: 34.v,
      width: 174.h,
      text: "msg_i_think_top_two".tr,
      buttonStyle: CustomButtonStyles.fillDeepPurpleA,
      buttonTextStyle: CustomTextStyles.bodyMediumBlack900_1,
    );
  }

  /// Section Widget
  Widget _buildImages(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle158x168,
          height: 158.v,
          width: 168.h,
          radius: BorderRadius.only(
            topLeft: Radius.circular(10.h),
            topRight: Radius.circular(10.h),
            bottomLeft: Radius.circular(10.h),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRectangle1,
          height: 158.v,
          width: 168.h,
          radius: BorderRadius.only(
            topLeft: Radius.circular(10.h),
            topRight: Radius.circular(10.h),
            bottomLeft: Radius.circular(10.h),
          ),
          margin: EdgeInsets.only(left: 1.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRead,
          height: 17.adaptSize,
          width: 17.adaptSize,
          margin: EdgeInsets.only(
            left: 4.h,
            top: 140.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInstagramRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgInstagramPrimary,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 40.v,
              bottom: 6.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHugeIcon,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 40.v,
              bottom: 6.v,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 3.h),
              padding: EdgeInsets.symmetric(horizontal: 3.h),
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Text(
                      "lbl_aa".tr,
                      style: CustomTextStyles.bodyLargeInterSecondaryContainer,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgPrivateMessageIcon,
                    height: 33.adaptSize,
                    width: 33.adaptSize,
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
