import 'bloc/my_information_one_bloc.dart';
import 'models/my_information_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/core/utils/validation_functions.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class MyInformationOneScreen extends StatelessWidget {
  MyInformationOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<MyInformationOneBloc>(
      create: (context) => MyInformationOneBloc(MyInformationOneState(
        myInformationOneModelObj: MyInformationOneModel(),
      ))
        ..add(MyInformationOneInitialEvent()),
      child: MyInformationOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildMyInformationStack(context),
                SizedBox(height: 55.v),
                Text(
                  "msg_change_my_password".tr,
                  style: CustomTextStyles.titleSmallPrimarySemiBold,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSaveChangesButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildMyInformationStack(BuildContext context) {
    return SizedBox(
      height: 265.v,
      width: 416.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse142,
            height: 220.v,
            width: 214.h,
            alignment: Alignment.topRight,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 38.v),
              child: Text(
                "lbl_my_information".tr,
                style: theme.textTheme.titleMedium,
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
                  SizedBox(height: 23.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "lbl_name".tr,
                      style: CustomTextStyles.labelLargeInterSemiBold,
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
                left: 15.h,
                bottom: 65.v,
              ),
              child: Text(
                "lbl_email3".tr,
                style: CustomTextStyles.labelLargeInterSemiBold,
              ),
            ),
          ),
          BlocSelector<MyInformationOneBloc, MyInformationOneState,
              TextEditingController?>(
            selector: (state) => state.nameController,
            builder: (context, nameController) {
              return CustomTextFormField(
                width: 374.h,
                controller: nameController,
                hintText: "lbl_johnathon_doe".tr,
                alignment: Alignment.center,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 17.v,
                ),
              );
            },
          ),
          BlocSelector<MyInformationOneBloc, MyInformationOneState,
              TextEditingController?>(
            selector: (state) => state.emailController,
            builder: (context, emailController) {
              return CustomTextFormField(
                width: 374.h,
                controller: emailController,
                hintText: "msg_jdoe221_gmail_com".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
                alignment: Alignment.bottomCenter,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                },
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 17.v,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveChangesButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_save_changes".tr,
      margin: EdgeInsets.only(
        left: 27.h,
        right: 27.h,
        bottom: 39.v,
      ),
    );
  }
}
