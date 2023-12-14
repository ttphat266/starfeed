import 'bloc/report_bloc.dart';
import 'models/report_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ReportBloc>(
      create: (context) => ReportBloc(ReportState(
        reportModelObj: ReportModel(),
      ))
        ..add(ReportInitialEvent()),
      child: ReportScreen(),
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
            alignment: Alignment.topLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse117,
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
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_report2".tr,
                            style: CustomTextStyles.titleMediumBlack900Bold,
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
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 29.h,
                    top: 86.v,
                  ),
                  child: Text(
                    "msg_find_support_or".tr,
                    style: CustomTextStyles.titleLargeBlack900SemiBold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 29.h,
                      top: 121.v,
                    ),
                    child: Text(
                      "msg_help_us_understand".tr,
                      style: CustomTextStyles.bodyMediumBlack90014_2,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 160.v),
                child: BlocSelector<ReportBloc, ReportState,
                    TextEditingController?>(
                  selector: (state) => state.typehereController,
                  builder: (context, typehereController) {
                    return CustomTextFormField(
                      width: 370.h,
                      controller: typehereController,
                      hintText: "lbl_type_here".tr,
                      hintStyle: CustomTextStyles.bodyMediumBlack90014_1,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.topCenter,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 30.v, 4.h, 7.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPrivateMessageIcon,
                          height: 33.adaptSize,
                          width: 33.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 212.v,
                      ),
                      maxLines: 12,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 13.v,
                      ),
                      borderDecoration:
                          TextFormFieldStyleHelper.fillPrimaryContainer,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
