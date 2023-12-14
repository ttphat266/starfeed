import 'bloc/my_jobs_seven_bloc.dart';
import 'models/my_jobs_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class MyJobsSevenScreen extends StatelessWidget {
  const MyJobsSevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyJobsSevenBloc>(
      create: (context) => MyJobsSevenBloc(MyJobsSevenState(
        myJobsSevenModelObj: MyJobsSevenModel(),
      ))
        ..add(MyJobsSevenInitialEvent()),
      child: MyJobsSevenScreen(),
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
              _buildMessageSection(context),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 33.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgHiconOutlinePrimary22x22,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl_add_link".tr,
                        style: CustomTextStyles.titleMediumPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(left: 33.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgHugeIcon,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl_add_image".tr,
                        style: CustomTextStyles.titleMediumPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(left: 33.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFile,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_add_videos".tr,
                        style: CustomTextStyles.bodyLargePrimary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 38.v),
              _buildDeliverNowSection(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageSection(BuildContext context) {
    return SizedBox(
      height: 241.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse153,
            height: 220.v,
            width: 214.h,
            alignment: Alignment.topRight,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 23.h,
                top: 29.v,
              ),
              child: Row(
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
                    opacity: 0.8,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 5.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        "lbl_johnathon_doe".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
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
                  color: theme.colorScheme.primaryContainer.withOpacity(1),
                ),
              ),
            ),
          ),
          BlocSelector<MyJobsSevenBloc, MyJobsSevenState,
              TextEditingController?>(
            selector: (state) => state.messageController,
            builder: (context, messageController) {
              return CustomTextFormField(
                width: 370.h,
                controller: messageController,
                hintText: "lbl_type_message".tr,
                hintStyle: CustomTextStyles.bodyMediumBlack90014_1,
                textInputAction: TextInputAction.done,
                alignment: Alignment.bottomCenter,
                maxLines: 8,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 11.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillPrimaryContainer,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeliverNowSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          left: 21.h,
          right: 17.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 3.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineRedA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: CustomElevatedButton(
          text: "lbl_deliver_now".tr,
        ),
      ),
    );
  }
}
