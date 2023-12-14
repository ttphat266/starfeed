import 'bloc/menu_one_bloc.dart';
import 'models/menu_one_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_search_view.dart';

class MenuOneScreen extends StatelessWidget {
  const MenuOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MenuOneBloc>(
      create: (context) => MenuOneBloc(MenuOneState(
        menuOneModelObj: MenuOneModel(),
      ))
        ..add(MenuOneInitialEvent()),
      child: MenuOneScreen(),
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
            child: Column(
              children: [
                _buildMenuStack(context),
                SizedBox(height: 8.v),
                Divider(),
                SizedBox(height: 30.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 11.h,
                      right: 154.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 17.v,
                    ),
                    decoration: AppDecoration.outlineRedA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIcUserSettings,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 17.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "msg_notification_settings".tr,
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                Divider(),
                SizedBox(height: 29.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIcPrivacy,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 17.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "lbl_privacy".tr,
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 29.v),
                Divider(),
                SizedBox(height: 30.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 21.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgQuestion,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Text(
                            "lbl_help".tr,
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 28.v),
                Divider(),
                SizedBox(height: 29.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIcLogOut,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 17.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "lbl_log_out".tr,
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 28.v),
                Divider(),
                SizedBox(height: 206.v),
                _buildSpacerRow(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuStack(BuildContext context) {
    return SizedBox(
      height: 265.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse140,
            height: 220.v,
            width: 214.h,
            alignment: Alignment.topRight,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 37.v),
              child: Text(
                "lbl_menu".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse823,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    radius: BorderRadius.circular(
                      28.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 17.v,
                      bottom: 16.v,
                    ),
                    child: Text(
                      "lbl_justin_justin".tr,
                      style: CustomTextStyles.titleMedium18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 95.v),
              child: SizedBox(
                width: double.maxFinite,
                child: Divider(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 75.v),
              child: SizedBox(
                width: double.maxFinite,
                child: Divider(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: BlocSelector<MenuOneBloc, MenuOneState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    width: 263.h,
                    controller: searchController,
                    hintText: "lbl_my_information".tr,
                    alignment: Alignment.bottomLeft,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSpacerRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 56.h,
        vertical: 12.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup630,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup602,
            height: 33.v,
            width: 36.h,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 34.v,
              bottom: 13.v,
            ),
          ),
          Spacer(
            flex: 46,
          ),
          Container(
            height: 67.adaptSize,
            width: 67.adaptSize,
            margin: EdgeInsets.only(bottom: 13.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.7,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 67.adaptSize,
                      width: 67.adaptSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          33.h,
                        ),
                        border: Border.all(
                          color: theme.colorScheme.primaryContainer
                              .withOpacity(0.32),
                          width: 1.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0.31, 0.05),
                          end: Alignment(0.69, 0.96),
                          colors: [
                            appTheme.indigoA20099,
                            appTheme.deepPurpleA200.withOpacity(0.6),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgStar1,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 53,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUser2,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(
              top: 34.v,
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }
}
