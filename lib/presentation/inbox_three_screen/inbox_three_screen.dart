import 'bloc/inbox_three_bloc.dart';
import 'models/inbox_three_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class InboxThreeScreen extends StatelessWidget {
  const InboxThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InboxThreeBloc>(
      create: (context) => InboxThreeBloc(InboxThreeState(
        inboxThreeModelObj: InboxThreeModel(),
      ))
        ..add(InboxThreeInitialEvent()),
      child: InboxThreeScreen(),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHiconLinearRow(context),
              SizedBox(height: 53.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "lbl_16_44".tr,
                  style: CustomTextStyles.labelLargeInterBlack900Medium13,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 56.h),
                child: BlocSelector<InboxThreeBloc, InboxThreeState,
                    TextEditingController?>(
                  selector: (state) => state.messageController,
                  builder: (context, messageController) {
                    return CustomTextFormField(
                      width: 135.h,
                      controller: messageController,
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
              ),
              SizedBox(height: 1.v),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: _buildHowAreYouDoingRow(
                  context,
                  messageText: "msg_how_are_you_doing".tr,
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(right: 46.h),
                child: BlocSelector<InboxThreeBloc, InboxThreeState,
                    TextEditingController?>(
                  selector: (state) => state.morningMessageController,
                  builder: (context, morningMessageController) {
                    return CustomTextFormField(
                      width: 207.h,
                      controller: morningMessageController,
                      hintText: "msg_it_s_morning_in".tr,
                      hintStyle: CustomTextStyles.bodyMediumSFProTextBlack900,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.centerRight,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 17.h,
                        vertical: 7.v,
                      ),
                      borderDecoration:
                          TextFormFieldStyleHelper.fillDeepPurpleA,
                      fillColor: appTheme.deepPurpleA100,
                    );
                  },
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: _buildHowAreYouDoingRow(
                  context,
                  messageText: "msg_what_is_the_most".tr,
                ),
              ),
              SizedBox(height: 4.v),
              CustomElevatedButton(
                height: 34.v,
                width: 174.h,
                text: "msg_i_think_top_two".tr,
                margin: EdgeInsets.only(right: 46.h),
                buttonStyle: CustomButtonStyles.fillDeepPurpleA,
                buttonTextStyle: CustomTextStyles.bodyMediumBlack900_1,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 43.h,
                    right: 45.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 33.h),
                child: _buildHowAreYouDoingRow(
                  context,
                  messageText: "msg_what_is_the_most2".tr,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildTypeAMessage(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildHiconLinearRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
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
                top: 51.v,
                bottom: 141.v,
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
            margin: EdgeInsets.only(
              left: 6.h,
              top: 44.v,
              bottom: 130.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 55.v,
              bottom: 141.v,
            ),
            child: Text(
              "lbl_sujan_lopese2".tr,
              style: CustomTextStyles.titleMedium17,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse157,
            height: 220.v,
            width: 214.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeAMessage(BuildContext context) {
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
            padding: EdgeInsets.only(top: 24.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 39.v,
                  width: 167.h,
                  margin: EdgeInsets.only(bottom: 1.v),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 160.h,
                          margin: EdgeInsets.only(
                            top: 8.v,
                            right: 7.h,
                            bottom: 11.v,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Opacity(
                                opacity: 0.5,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgSettingsBlack900,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgHugeIconBlack90020x20,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                              ),
                              Opacity(
                                opacity: 0.5,
                                child: Text(
                                  "lbl_creat_an_offer".tr,
                                  style: CustomTextStyles.titleSmallBlack900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 39.v,
                          width: 101.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                            border: Border.all(
                              color: appTheme.redA700,
                              width: 2.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPrivateMessageIcon,
                  height: 33.adaptSize,
                  width: 33.adaptSize,
                  margin: EdgeInsets.only(top: 7.v),
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
