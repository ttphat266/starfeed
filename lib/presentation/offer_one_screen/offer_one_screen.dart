import 'bloc/offer_one_bloc.dart';
import 'models/offer_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_outlined_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class OfferOneScreen extends StatelessWidget {
  const OfferOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OfferOneBloc>(
      create: (context) => OfferOneBloc(OfferOneState(
        offerOneModelObj: OfferOneModel(),
      ))
        ..add(OfferOneInitialEvent()),
      child: OfferOneScreen(),
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
                _buildMingcutePencilFillStack(context),
                SizedBox(height: 27.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Opacity(
                    opacity: 0.6,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "lbl_single_payment2".tr,
                        style: CustomTextStyles.titleMediumLexendBlack900Medium,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                _buildEditTextRow(context),
                SizedBox(height: 2.v),
                _buildSelectRow(context),
                SizedBox(height: 32.v),
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
                _buildEditTextRow1(context),
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
                _buildExpirationTimeRow(context),
                SizedBox(height: 27.v),
                _buildRequestRequirementsRow(context),
                SizedBox(height: 83.v),
                _buildSendOfferButton(context),
                SizedBox(height: 519.v),
                _buildSendOfferColumn(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMingcutePencilFillStack(BuildContext context) {
    return SizedBox(
      height: 327.v,
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
                    imagePath: ImageConstant.imgEllipse159,
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
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.fillPrimaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Opacity(
                    opacity: 0.4,
                    child: Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        "msg_e_g_deliverables".tr,
                        style: CustomTextStyles.bodySmallBlack90012_2,
                      ),
                    ),
                  ),
                  SizedBox(height: 117.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Opacity(
                      opacity: 0.5,
                      child: Text(
                        "lbl_0_1200".tr,
                        style: CustomTextStyles.bodySmallInter12,
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
  Widget _buildEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: BlocSelector<OfferOneBloc, OfferOneState, TextEditingController?>(
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
  Widget _buildEditTextRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 33.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 12.v,
            ),
            child: Text(
              "lbl_total_price2".tr,
              style: CustomTextStyles.bodySmallBlack900,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 12.v,
            ),
            child: Text(
              "lbl2".tr,
              style: CustomTextStyles.bodySmallInterBlack90011_1,
            ),
          ),
          _buildEditText(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelect(BuildContext context) {
    return CustomOutlinedButton(
      height: 42.v,
      width: 82.h,
      text: "lbl_select".tr,
      buttonStyle: CustomButtonStyles.outlineRedATL10,
      buttonTextStyle: CustomTextStyles.bodySmallInterPrimary,
    );
  }

  /// Section Widget
  Widget _buildSelectRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 33.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 15.v,
                bottom: 12.v,
              ),
              child: Text(
                "lbl_delivery_time".tr,
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ),
            _buildSelect(context),
          ],
        ),
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
      child: BlocSelector<OfferOneBloc, OfferOneState, TextEditingController?>(
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
      child: BlocSelector<OfferOneBloc, OfferOneState, TextEditingController?>(
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
    return BlocSelector<OfferOneBloc, OfferOneState, TextEditingController?>(
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
      child: BlocSelector<OfferOneBloc, OfferOneState, TextEditingController?>(
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
  Widget _buildEditTextRow1(BuildContext context) {
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
  Widget _buildExpirationTimeRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 37.h,
        right: 21.h,
      ),
      child: Row(
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
            "lbl_select".tr,
            style: CustomTextStyles.bodySmallInterPrimary,
          ),
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
      margin: EdgeInsets.symmetric(horizontal: 27.h),
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
}
