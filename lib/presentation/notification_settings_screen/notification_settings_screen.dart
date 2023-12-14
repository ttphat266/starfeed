import 'bloc/notification_settings_bloc.dart';
import 'models/notification_settings_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_switch.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationSettingsBloc>(
      create: (context) => NotificationSettingsBloc(NotificationSettingsState(
        notificationSettingsModelObj: NotificationSettingsModel(),
      ))
        ..add(NotificationSettingsInitialEvent()),
      child: NotificationSettingsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
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
                        imagePath: ImageConstant.imgEllipse131,
                        height: 220.v,
                        width: 214.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 16.h,
                            bottom: 46.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BlocSelector<NotificationSettingsBloc,
                                  NotificationSettingsState, bool?>(
                                selector: (state) => state.isSelectedSwitch,
                                builder: (context, isSelectedSwitch) {
                                  return CustomSwitch(
                                    alignment: Alignment.center,
                                    value: isSelectedSwitch,
                                    onChange: (value) {
                                      context
                                          .read<NotificationSettingsBloc>()
                                          .add(ChangeSwitchEvent(value: value));
                                    },
                                  );
                                },
                              ),
                              SizedBox(height: 31.v),
                              BlocSelector<NotificationSettingsBloc,
                                  NotificationSettingsState, bool?>(
                                selector: (state) => state.isSelectedSwitch1,
                                builder: (context, isSelectedSwitch1) {
                                  return CustomSwitch(
                                    value: isSelectedSwitch1,
                                    onChange: (value) {
                                      context
                                          .read<NotificationSettingsBloc>()
                                          .add(
                                              ChangeSwitch1Event(value: value));
                                    },
                                  );
                                },
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
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 38.v),
                  child: Text(
                    "msg_notification_settings".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 104.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_pause_all_notifications".tr,
                        style: CustomTextStyles.titleSmallBlack900SemiBold,
                      ),
                      SizedBox(height: 36.v),
                      Text(
                        "msg_push_notifications".tr,
                        style: CustomTextStyles.titleSmallBlack900SemiBold,
                      ),
                      SizedBox(height: 36.v),
                      Text(
                        "msg_email_notifications".tr,
                        style: CustomTextStyles.titleSmallBlack900SemiBold,
                      ),
                    ],
                  ),
                ),
              ),
              Opacity(
                opacity: 0.6,
                child: CustomImageView(
                  imagePath: ImageConstant.imgHiconLinear,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 34.v,
                  ),
                ),
              ),
              BlocSelector<NotificationSettingsBloc, NotificationSettingsState,
                  bool?>(
                selector: (state) => state.isSelectedSwitch2,
                builder: (context, isSelectedSwitch2) {
                  return CustomSwitch(
                    margin: EdgeInsets.only(
                      top: 212.v,
                      right: 16.h,
                    ),
                    alignment: Alignment.topRight,
                    value: isSelectedSwitch2,
                    onChange: (value) {
                      context
                          .read<NotificationSettingsBloc>()
                          .add(ChangeSwitch2Event(value: value));
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
