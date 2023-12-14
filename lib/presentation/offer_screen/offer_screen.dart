import 'bloc/offer_bloc.dart';
import 'models/offer_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OfferBloc>(
      create: (context) => OfferBloc(OfferState(
        offerModelObj: OfferModel(),
      ))
        ..add(OfferInitialEvent()),
      child: OfferScreen(),
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildEditTextStack(context),
                SizedBox(height: 6.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 33.h,
                    right: 25.h,
                  ),
                  child: _buildExpirationTimeRow(
                    context,
                    expirationTime: "lbl_delivery_time".tr,
                    select: "lbl_select".tr,
                  ),
                ),
                SizedBox(height: 45.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Opacity(
                    opacity: 0.6,
                    child: Padding(
                      padding: EdgeInsets.only(left: 33.h),
                      child: Text(
                        "lbl_add_a_service".tr,
                        style: CustomTextStyles.titleMediumLexendBlack900Medium,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 17.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 33.h),
                    child: Text(
                      "lbl_service_type".tr,
                      style: CustomTextStyles.bodySmallBlack90012_3,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                _buildVideoValueEditText(context),
                SizedBox(height: 16.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 33.h),
                    child: Text(
                      "lbl_post_type".tr,
                      style: CustomTextStyles.bodySmallBlack90012_3,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                _buildStoryPostValueEditText(context),
                SizedBox(height: 14.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 33.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "msg_duration_of_post2".tr,
                            style: CustomTextStyles.bodySmallBlack90012_3,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 107.h),
                          child: Text(
                            "lbl_length".tr,
                            style: CustomTextStyles.bodySmallBlack90012_3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                _buildEditText3(context),
                SizedBox(height: 53.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Opacity(
                    opacity: 0.6,
                    child: Padding(
                      padding: EdgeInsets.only(left: 33.h),
                      child: Text(
                        "msg_define_offer_settings".tr,
                        style: CustomTextStyles.titleMediumLexendBlack900Medium,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 37.h,
                    right: 21.h,
                  ),
                  child: _buildExpirationTimeRow(
                    context,
                    expirationTime: "msg_expiration_time".tr,
                    select: "lbl_select".tr,
                  ),
                ),
                SizedBox(height: 27.v),
                _buildRequestRequirementsRow(context),
                SizedBox(height: 74.v),
                _buildSendOffer(context),
                SizedBox(height: 510.v),
                _buildSendOfferColumn(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: BlocSelector<OfferBloc, OfferState, TextEditingController?>(
        selector: (state) => state.editTextController,
        builder: (context, editTextController) {
          return CustomTextFormField(
            width: 91.h,
            controller: editTextController,
            borderDecoration: TextFormFieldStyleHelper.fillPrimaryContainerTL5,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEditTextStack(BuildContext context) {
    return SizedBox(
      height: 431.v,
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
                    imagePath: ImageConstant.imgEllipse160,
                    height: 220.v,
                    width: 214.h,
                    alignment: Alignment.center,
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMingcutePencil2Fill,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 43.v,
                        right: 31.h,
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
                left: 18.h,
                top: 38.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                      Opacity(
                        opacity: 0.6,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 7.h,
                            top: 3.v,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "lbl_create_an_offer".tr,
                            style: CustomTextStyles.titleMediumBlack900Medium,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 45.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Opacity(
                      opacity: 0.6,
                      child: Text(
                        "msg_describe_your_offer".tr,
                        style: CustomTextStyles.titleMediumLexendBlack900Medium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 30.h,
                bottom: 22.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: Text(
                      "lbl_single_payment2".tr,
                      style: CustomTextStyles.titleMediumLexendBlack900Medium,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_total_price2".tr,
                      style: CustomTextStyles.bodySmallBlack900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 104.v),
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.fillPrimaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Opacity(
                      opacity: 0.4,
                      child: Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "msg_e_g_deliverables".tr,
                          style: CustomTextStyles.bodySmallBlack90012_2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 59.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgPlay,
                    height: 57.v,
                    width: 31.h,
                    margin: EdgeInsets.only(right: 148.h),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "lbl_0_1200".tr,
                      style: CustomTextStyles.bodySmallInter12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 25.h,
                bottom: 10.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.v),
                    child: Text(
                      "lbl2".tr,
                      style: CustomTextStyles.bodySmallInterBlack90011_1,
                    ),
                  ),
                  _buildEditText(context),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.outlineBlack900,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 16.v),
                  Text(
                    "lbl_1_day".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "lbl_2_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "lbl_3_days2".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "lbl_4_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "lbl_5_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "lbl_6_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "lbl_7_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "lbl_8_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "lbl_9_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "lbl_10_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "lbl_11_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "lbl_12_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "lbl_13_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "lbl_14_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "lbl_15_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "lbl_16_days".tr,
                    style: CustomTextStyles.bodySmallInterBlack90011_1,
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
  Widget _buildVideoValueEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 33.h,
        right: 20.h,
      ),
      child: BlocSelector<OfferBloc, OfferState, TextEditingController?>(
        selector: (state) => state.videoValueEditTextController,
        builder: (context, videoValueEditTextController) {
          return CustomTextFormField(
            controller: videoValueEditTextController,
            hintText: "lbl_video".tr,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 14.v, 10.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgHiconLinearLeft3,
                height: 28.adaptSize,
                width: 28.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 55.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildStoryPostValueEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 33.h,
        right: 21.h,
      ),
      child: BlocSelector<OfferBloc, OfferState, TextEditingController?>(
        selector: (state) => state.storyPostValueEditTextController,
        builder: (context, storyPostValueEditTextController) {
          return CustomTextFormField(
            controller: storyPostValueEditTextController,
            hintText: "lbl_story_post".tr,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 14.v, 10.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgHiconLinearLeft3,
                height: 28.adaptSize,
                width: 28.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 55.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return BlocSelector<OfferBloc, OfferState, TextEditingController?>(
      selector: (state) => state.editTextController1,
      builder: (context, editTextController1) {
        return CustomTextFormField(
          width: 171.h,
          controller: editTextController1,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.h),
      child: BlocSelector<OfferBloc, OfferState, TextEditingController?>(
        selector: (state) => state.editTextController2,
        builder: (context, editTextController2) {
          return CustomTextFormField(
            width: 172.h,
            controller: editTextController2,
            textInputAction: TextInputAction.done,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 33.h,
        right: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildEditText1(context),
          _buildEditText2(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRequestRequirementsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 37.h,
        right: 21.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_request_requirements".tr,
            style: CustomTextStyles.bodySmallBlack900,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup579,
            height: 15.v,
            width: 29.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSendOfferButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_send_offer".tr,
    );
  }

  /// Section Widget
  Widget _buildSendOffer(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 21.h),
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineRedA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: _buildSendOfferButton(context),
    );
  }

  /// Section Widget
  Widget _buildSendOfferColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 27.h),
      padding: EdgeInsets.symmetric(
        horizontal: 141.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: SizedBox(
        width: 91.h,
        child: Text(
          "lbl_send_offer".tr,
          maxLines: null,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: CustomTextStyles.titleMediumLexendPrimaryContainerMedium,
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildExpirationTimeRow(
    BuildContext context, {
    required String expirationTime,
    required String select,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_expiration_time".tr,
                style: CustomTextStyles.bodySmallBlack90011_2,
              ),
              TextSpan(
                text: "lbl_optional".tr,
                style: CustomTextStyles.bodySmallBlack90011_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          select,
          style: CustomTextStyles.bodySmallInterPrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
