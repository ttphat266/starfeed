import 'bloc/favorites_bloc.dart';
import 'models/favorites_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FavoritesBloc>(
      create: (context) => FavoritesBloc(FavoritesState(
        favoritesModelObj: FavoritesModel(),
      ))
        ..add(FavoritesInitialEvent()),
      child: FavoritesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildPlaylistRow(context),
                  SizedBox(height: 30.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 35.h,
                      right: 19.h,
                    ),
                    child: _buildUserProfileRow2(
                      context,
                      userName: "lbl_name_here".tr,
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 35.h,
                      right: 19.h,
                    ),
                    child: _buildUserProfileRow2(
                      context,
                      userName: "lbl_name_here".tr,
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPlaylistRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 34.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Opacity(
                  opacity: 0.6,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgHiconLinear,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    alignment: Alignment.centerLeft,
                  ),
                ),
                SizedBox(height: 46.v),
                _buildUserProfileRow(
                  context,
                  userName: "lbl_name_here".tr,
                ),
                SizedBox(height: 30.v),
                _buildUserProfileRow(
                  context,
                  userName: "lbl_name_here".tr,
                ),
              ],
            ),
          ),
          Container(
            height: 220.v,
            width: 250.h,
            margin: EdgeInsets.only(
              left: 9.h,
              bottom: 4.v,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 220.v,
                    width: 214.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse132,
                          height: 220.v,
                          width: 214.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 19.h,
                              bottom: 6.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgHiconLinearGray50004,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize,
                                ),
                                SizedBox(height: 55.v),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgHiconLinearPrimary23x23,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize,
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
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 36.v),
                    child: Text(
                      "lbl_favorites".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildUserProfileRow(
    BuildContext context, {
    required String userName,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse4,
          height: 43.adaptSize,
          width: 43.adaptSize,
          radius: BorderRadius.circular(
            21.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            top: 14.v,
            bottom: 11.v,
          ),
          child: Text(
            userName,
            style: CustomTextStyles.titleSmallBlack900_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildUserProfileRow2(
    BuildContext context, {
    required String userName,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse243x43,
          height: 43.adaptSize,
          width: 43.adaptSize,
          radius: BorderRadius.circular(
            21.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            top: 14.v,
            bottom: 11.v,
          ),
          child: Text(
            userName,
            style: CustomTextStyles.titleSmallBlack900_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgHiconLinearPrimary23x23,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(
            top: 14.v,
            bottom: 10.v,
          ),
        ),
      ],
    );
  }
}
