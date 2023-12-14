import 'bloc/let_s_start_one_bloc.dart';
import 'models/let_s_start_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';

class LetSStartOneScreen extends StatelessWidget {
  const LetSStartOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LetSStartOneBloc>(
      create: (context) => LetSStartOneBloc(LetSStartOneState(
        letSStartOneModelObj: LetSStartOneModel(),
      ))
        ..add(LetSStartOneInitialEvent()),
      child: LetSStartOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LetSStartOneBloc, LetSStartOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: theme.colorScheme.primary.withOpacity(0.2),
            body: Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withOpacity(0.2),
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup621,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.img191971431,
                      height: 323.v,
                      width: 428.h,
                    ),
                    SizedBox(height: 80.v),
                    _buildTurningInfluenceSection(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTurningInfluenceSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_turning_influence".tr,
            style: CustomTextStyles.headlineSmallInterPrimaryContainer,
          ),
          SizedBox(height: 14.v),
          SizedBox(
            height: 146.v,
            width: 361.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Opacity(
                    opacity: 0.7,
                    child: SizedBox(
                      width: 349.h,
                      child: Text(
                        "msg_your_influence_has".tr,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleSmallGray10099.copyWith(
                          height: 1.56,
                        ),
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgHiconLinearGray50,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(
                    right: 8.h,
                    bottom: 9.v,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 19.v),
                    child: Text(
                      "msg_let_s_get_started".tr,
                      style: CustomTextStyles.titleLargePrimaryContainer,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 65.v,
                    width: 64.h,
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
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
