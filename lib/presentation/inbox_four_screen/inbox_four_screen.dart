import 'bloc/inbox_four_bloc.dart';
import 'models/inbox_four_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class InboxFourScreen extends StatelessWidget {
  const InboxFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InboxFourBloc>(
      create: (context) => InboxFourBloc(InboxFourState(
        inboxFourModelObj: InboxFourModel(),
      ))
        ..add(InboxFourInitialEvent()),
      child: InboxFourScreen(),
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
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              _buildTypeAMessage(context),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse158,
                height: 220.v,
                width: 214.h,
                alignment: Alignment.topRight,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 21.h,
                    bottom: 170.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 151.h),
                          child: Text(
                            "lbl_16_44".tr,
                            style: CustomTextStyles
                                .labelLargeInterBlack900Medium13,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.only(left: 34.h),
                        child: BlocSelector<InboxFourBloc, InboxFourState,
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
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillGray,
                              fillColor: appTheme.gray20001,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 1.v),
                      _buildHowAreYouDoing(
                        context,
                        messageText: "msg_how_are_you_doing".tr,
                      ),
                      SizedBox(height: 13.v),
                      Padding(
                        padding: EdgeInsets.only(right: 1.h),
                        child: BlocSelector<InboxFourBloc, InboxFourState,
                            TextEditingController?>(
                          selector: (state) => state.morningGreetingController,
                          builder: (context, morningGreetingController) {
                            return CustomTextFormField(
                              width: 207.h,
                              controller: morningGreetingController,
                              hintText: "msg_it_s_morning_in".tr,
                              hintStyle:
                                  CustomTextStyles.bodyMediumSFProTextBlack900,
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
                      _buildHowAreYouDoing(
                        context,
                        messageText: "msg_what_is_the_most".tr,
                      ),
                      SizedBox(height: 4.v),
                      CustomElevatedButton(
                        height: 34.v,
                        width: 174.h,
                        text: "msg_i_think_top_two".tr,
                        margin: EdgeInsets.only(right: 1.h),
                        buttonStyle: CustomButtonStyles.fillDeepPurpleA,
                        buttonTextStyle: CustomTextStyles.bodyMediumBlack900_1,
                        alignment: Alignment.centerRight,
                      ),
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
                      SizedBox(height: 13.v),
                      Padding(
                        padding: EdgeInsets.only(left: 11.h),
                        child: _buildHowAreYouDoing(
                          context,
                          messageText: "msg_what_is_the_most2".tr,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildView(context),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 396.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 44.v,
                  ),
                  decoration: AppDecoration.fillBlueGray,
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
                            top: 6.v,
                            bottom: 406.v,
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
                          bottom: 396.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 11.v,
                          bottom: 406.v,
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
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeAMessage(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.fillPrimaryContainer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 10.v),
            Opacity(
              opacity: 0.4,
              child: Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "msg_type_a_message".tr,
                  style: CustomTextStyles.bodySmallInterBlack90012_1,
                ),
              ),
            ),
            SizedBox(height: 31.v),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.fillPrimaryContainer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.5,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 2.v,
                  width: 39.h,
                  decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.53),
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 35.v),
            Opacity(
              opacity: 0.7,
              child: Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Text(
                  "msg_how_do_you_want".tr,
                  style: CustomTextStyles.titleLargeBlack900,
                ),
              ),
            ),
            SizedBox(height: 10.v),
            Opacity(
              opacity: 0.5,
              child: Container(
                width: 344.h,
                margin: EdgeInsets.only(
                  left: 15.h,
                  right: 30.h,
                ),
                child: Text(
                  "msg_give_the_payment".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBlack90014_3,
                ),
              ),
            ),
            SizedBox(height: 16.v),
            SizedBox(
              height: 107.v,
              width: 379.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(14.h, 10.v, 17.h, 10.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 16.v,
                      ),
                      decoration: AppDecoration.outlineBlack9008.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowUp,
                            height: 40.v,
                            width: 48.h,
                            margin: EdgeInsets.only(
                              top: 10.v,
                              bottom: 2.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 19.h,
                              top: 4.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                    "lbl_single_payment".tr,
                                    style: CustomTextStyles
                                        .titleSmallBlack900Medium_2,
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                Opacity(
                                  opacity: 0.4,
                                  child: SizedBox(
                                    width: 209.h,
                                    child: Text(
                                      "msg_receive_one_payment".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodySmallInterBlack900_5,
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 107.v,
                      width: 379.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20.h,
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
            SizedBox(height: 8.v),
            Container(
              margin: EdgeInsets.only(
                left: 14.h,
                right: 28.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.outlineBlack9008.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup575,
                    height: 40.v,
                    width: 54.h,
                    margin: EdgeInsets.only(top: 22.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 7.v,
                      bottom: 4.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.7,
                          child: Text(
                            "lbl_milestones".tr,
                            style: CustomTextStyles.titleSmallBlack900Medium_2,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Opacity(
                          opacity: 0.4,
                          child: SizedBox(
                            width: 217.h,
                            child: Text(
                              "msg_work_step_by_step".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallInterBlack900_5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 33.v),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildHowAreYouDoing(
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
