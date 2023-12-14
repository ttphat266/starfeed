import 'bloc/inbox_five_bloc.dart';
import 'models/inbox_five_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class InboxFiveScreen extends StatelessWidget {
  const InboxFiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InboxFiveBloc>(
      create: (context) => InboxFiveBloc(InboxFiveState(
        inboxFiveModelObj: InboxFiveModel(),
      ))
        ..add(InboxFiveInitialEvent()),
      child: InboxFiveScreen(),
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
          height: 838.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse161,
                height: 220.v,
                width: 214.h,
                alignment: Alignment.topRight,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    top: 44.v,
                  ),
                  child: Row(
                    children: [
                      Opacity(
                        opacity: 0.6,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgHiconLinear,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 10.v,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse52,
                        height: 44.adaptSize,
                        width: 44.adaptSize,
                        radius: BorderRadius.circular(
                          22.h,
                        ),
                        margin: EdgeInsets.only(left: 6.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 11.v,
                          bottom: 10.v,
                        ),
                        child: Text(
                          "lbl_sujan_lopese2".tr,
                          style: CustomTextStyles.titleMedium17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildMessageEditText(context),
                      SizedBox(height: 1.v),
                      _buildHowAreYouDoingRow(
                        context,
                        messageText: "msg_how_are_you_doing".tr,
                      ),
                      SizedBox(height: 13.v),
                      _buildTimeEditText(context),
                      SizedBox(height: 13.v),
                      _buildHowAreYouDoingRow(
                        context,
                        messageText: "msg_what_is_the_most".tr,
                      ),
                      SizedBox(height: 4.v),
                      _buildIThinkTopTwoAreButton(context),
                      SizedBox(height: 2.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
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
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 24.v),
                      _buildWithdrawOfferRow(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildTypeAMessageColumn(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 34.h),
      child:
          BlocSelector<InboxFiveBloc, InboxFiveState, TextEditingController?>(
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
  Widget _buildTimeEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child:
          BlocSelector<InboxFiveBloc, InboxFiveState, TextEditingController?>(
        selector: (state) => state.timeEditTextController,
        builder: (context, timeEditTextController) {
          return CustomTextFormField(
            width: 207.h,
            controller: timeEditTextController,
            hintText: "msg_it_s_morning_in".tr,
            hintStyle: CustomTextStyles.bodyMediumSFProTextBlack900,
            textInputAction: TextInputAction.done,
            alignment: Alignment.centerRight,
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
  Widget _buildIThinkTopTwoAreButton(BuildContext context) {
    return CustomElevatedButton(
      height: 34.v,
      width: 174.h,
      text: "msg_i_think_top_two".tr,
      margin: EdgeInsets.only(right: 1.h),
      buttonStyle: CustomButtonStyles.fillDeepPurpleA,
      buttonTextStyle: CustomTextStyles.bodyMediumBlack900_1,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildWithdrawOfferButton(BuildContext context) {
    return CustomElevatedButton(
      height: 41.v,
      text: "lbl_withdraw_offer".tr,
      margin: EdgeInsets.only(
        left: 4.h,
        right: 9.h,
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.labelLargePrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildWithdrawOfferRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse5329x29,
            height: 29.adaptSize,
            width: 29.adaptSize,
            radius: BorderRadius.circular(
              14.h,
            ),
            margin: EdgeInsets.only(bottom: 202.v),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 5.h),
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 288.h,
                    margin: EdgeInsets.only(right: 4.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_description2".tr,
                            style: CustomTextStyles.titleSmallBlack900Medium15,
                          ),
                          TextSpan(
                            text: "msg_lorem_ipsum_dolor5".tr,
                            style: CustomTextStyles.bodySmallInterBlack900,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0.4,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHiconOutlineGray900,
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                            margin: EdgeInsets.only(
                              top: 1.v,
                              bottom: 2.v,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "msg_offer_price_100".tr,
                            style: CustomTextStyles.bodySmallInterBlack90011,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0.4,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgBiClock,
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                            margin: EdgeInsets.only(bottom: 3.v),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "lbl_2_days_delivery".tr,
                            style: CustomTextStyles.bodySmallInterBlack90011,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildWithdrawOfferButton(context),
                  SizedBox(height: 28.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeAMessageColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 34.h,
        right: 13.h,
        bottom: 7.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.4,
            child: Text(
              "msg_type_a_message".tr,
              style: CustomTextStyles.bodySmallInterBlack90012_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 31.v),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSettingsBlack900,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 12.v,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgHugeIconBlack90020x20,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    left: 15.h,
                    top: 1.v,
                    bottom: 12.v,
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 1.v,
                      bottom: 12.v,
                    ),
                    child: Text(
                      "lbl_creat_an_offer".tr,
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgPrivateMessageIcon,
                  height: 33.adaptSize,
                  width: 33.adaptSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildHowAreYouDoingRow(
    BuildContext context, {
    required String messageText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse5329x29,
          height: 29.adaptSize,
          width: 29.adaptSize,
          radius: BorderRadius.circular(
            14.h,
          ),
          margin: EdgeInsets.only(
            top: 11.v,
            bottom: 10.v,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 5.h),
          padding: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.fillGray20001.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL101,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Opacity(
                opacity: 0.7,
                child: SizedBox(
                  width: 171.h,
                  child: Text(
                    messageText,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: appTheme.black900.withOpacity(0.6),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
