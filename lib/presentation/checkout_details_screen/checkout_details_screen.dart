import 'bloc/checkout_details_bloc.dart';
import 'models/checkout_details_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_icon_button.dart';
import 'package:phat_s_application1/widgets/custom_radio_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class CheckoutDetailsScreen extends StatelessWidget {
  const CheckoutDetailsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckoutDetailsBloc>(
      create: (context) => CheckoutDetailsBloc(CheckoutDetailsState(
        checkoutDetailsModelObj: CheckoutDetailsModel(),
      ))
        ..add(CheckoutDetailsInitialEvent()),
      child: CheckoutDetailsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                bottom: 161.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildPriceStack(context),
                  SizedBox(height: 36.v),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "msg_submit_your_content".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      right: 111.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgHugeIcon,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(
                            top: 2.v,
                            bottom: 3.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "lbl_add_images".tr,
                            style: CustomTextStyles.bodyLargePrimaryRegular,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgFile,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_add_videos".tr,
                            style: CustomTextStyles.bodyLargePrimaryRegular,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "msg_when_do_you_need".tr,
                      style: CustomTextStyles.titleMediumLexendBold,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  _buildImmediatelyRadio(context),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: Text(
                      "msg_add_need_to_posted".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildDateRow(context),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: Text(
                      "lbl_description".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildDescriptionColumn(context),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Text(
                      "msg_when_do_you_need2".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildPostByEditText(context),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Text(
                      "msg_special_instructions".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildInstructionsEditText(context),
                  SizedBox(height: 51.v),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Text(
                      "lbl_summary".tr,
                      style: CustomTextStyles.titleMediumLexendBold,
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Align(
                    alignment: Alignment.center,
                    child: Divider(
                      indent: 15.h,
                      endIndent: 27.h,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      right: 25.h,
                    ),
                    child: _buildFacebookVideoRow(
                      context,
                      videoText: "lbl_1_video".tr,
                      facebookText: "lbl_instagram".tr,
                      priceText: "lbl_500".tr,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Align(
                    alignment: Alignment.center,
                    child: Divider(
                      indent: 15.h,
                      endIndent: 27.h,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      right: 25.h,
                    ),
                    child: _buildFacebookVideoRow(
                      context,
                      videoText: "lbl_1_video".tr,
                      facebookText: "lbl_facebook".tr,
                      priceText: "lbl_500".tr,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Align(
                    alignment: Alignment.center,
                    child: Divider(
                      indent: 15.h,
                      endIndent: 27.h,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 27.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "lbl_total".tr,
                            style: CustomTextStyles.titleMediumLexend_1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 93.h),
                            child: Text(
                              "lbl_1000".tr,
                              style: CustomTextStyles.titleMediumLexend_1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40.v),
                  _buildAddToCartButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceStack(BuildContext context) {
    return SizedBox(
      height: 238.v,
      width: 416.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 220.v,
              width: 214.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse111,
                    height: 220.v,
                    width: 214.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 27.h,
                        bottom: 85.v,
                      ),
                      child: Text(
                        "lbl_1000".tr,
                        style: theme.textTheme.bodyLarge,
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
              padding: EdgeInsets.only(top: 34.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHiconLinear,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                    ),
                  ),
                  SizedBox(height: 50.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 24.v,
                          width: 30.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 7.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.fillGray700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHiconLinearGray5014x14,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 13.h,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_2".tr,
                            style: CustomTextStyles.titleMediumGray700,
                          ),
                        ),
                        Container(
                          height: 24.v,
                          width: 30.h,
                          margin: EdgeInsets.only(left: 12.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 7.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.fillGray700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHiconLinear14x14,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 36.v),
              child: Text(
                "msg_checkout_details".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 131.h),
              child: Text(
                "lbl_15_second_video".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                bottom: 50.v,
              ),
              child: Text(
                "msg_select_social_media".tr,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Row(
                children: [
                  CustomIconButton(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.outlinePrimaryTL4,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPhInstagramLogo,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgRiFacebookFill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.outlineGray,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUilSnapchatGhost,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildImmediatelyRadio(BuildContext context) {
    return BlocSelector<CheckoutDetailsBloc, CheckoutDetailsState, String?>(
      selector: (state) => state.radioGroup,
      builder: (context, radioGroup) {
        return Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: CustomRadioButton(
            text: "lbl_immediately".tr,
            value: "lbl_immediately".tr ?? "",
            groupValue: radioGroup,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            textStyle: CustomTextStyles.titleSmallLexendBlack90015,
            onChange: (value) {
              context
                  .read<CheckoutDetailsBloc>()
                  .add(ChangeRadioButtonEvent(value: value));
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFromDateEditText(BuildContext context) {
    return BlocSelector<CheckoutDetailsBloc, CheckoutDetailsState,
        TextEditingController?>(
      selector: (state) => state.fromDateEditTextController,
      builder: (context, fromDateEditTextController) {
        return CustomTextFormField(
          width: 160.h,
          controller: fromDateEditTextController,
          hintText: "lbl_10_06_2023".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 17.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildToDateEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22.h),
      child: BlocSelector<CheckoutDetailsBloc, CheckoutDetailsState,
          TextEditingController?>(
        selector: (state) => state.toDateEditTextController,
        builder: (context, toDateEditTextController) {
          return CustomTextFormField(
            width: 160.h,
            controller: toDateEditTextController,
            hintText: "lbl_20_07_2023".tr,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 17.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDateRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 27.h,
      ),
      child: Row(
        children: [
          _buildFromDateEditText(context),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 18.v,
              bottom: 16.v,
            ),
            child: Text(
              "lbl_to".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          _buildToDateEditText(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionColumn(BuildContext context) {
    return Container(
      width: 374.h,
      margin: EdgeInsets.only(
        left: 13.h,
        right: 27.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray30002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.v),
          Container(
            width: 317.h,
            margin: EdgeInsets.only(
              left: 4.h,
              right: 32.h,
            ),
            child: Text(
              "msg_lorem_ipsum_dolor".tr,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeInter,
            ),
          ),
          SizedBox(height: 13.v),
          Align(
            alignment: Alignment.centerRight,
            child: Opacity(
              opacity: 0.5,
              child: Text(
                "lbl_250_500".tr,
                style: CustomTextStyles.bodySmallInter_1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostByEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 27.h,
      ),
      child: BlocSelector<CheckoutDetailsBloc, CheckoutDetailsState,
          TextEditingController?>(
        selector: (state) => state.postByEditTextController,
        builder: (context, postByEditTextController) {
          return CustomTextFormField(
            controller: postByEditTextController,
            hintText: "lbl_5_1_23".tr,
            hintStyle: CustomTextStyles.bodyMediumLexendBlack900Light14,
            alignment: Alignment.center,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 18.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildInstructionsEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 27.h,
      ),
      child: BlocSelector<CheckoutDetailsBloc, CheckoutDetailsState,
          TextEditingController?>(
        selector: (state) => state.instructionsEditTextController,
        builder: (context, instructionsEditTextController) {
          return CustomTextFormField(
            controller: instructionsEditTextController,
            hintText: "msg_type_instructions".tr,
            textInputAction: TextInputAction.done,
            alignment: Alignment.center,
            maxLines: 9,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 20.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCartButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_add_to_cart".tr,
      margin: EdgeInsets.only(
        left: 15.h,
        right: 27.h,
      ),
      alignment: Alignment.center,
    );
  }

  /// Common widget
  Widget _buildFacebookVideoRow(
    BuildContext context, {
    required String videoText,
    required String facebookText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          videoText,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Spacer(
          flex: 63,
        ),
        Text(
          facebookText,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Spacer(
          flex: 36,
        ),
        Text(
          priceText,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }
}
