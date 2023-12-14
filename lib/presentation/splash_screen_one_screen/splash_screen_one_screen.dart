import 'bloc/splash_screen_one_bloc.dart';
import 'models/splash_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';

class SplashScreenOneScreen extends StatelessWidget {
  const SplashScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashScreenOneBloc>(
      create: (context) => SplashScreenOneBloc(SplashScreenOneState(
        splashScreenOneModelObj: SplashScreenOneModel(),
      ))
        ..add(SplashScreenOneInitialEvent()),
      child: SplashScreenOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SplashScreenOneBloc, SplashScreenOneState>(
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
                    SizedBox(height: 333.v),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: 182.adaptSize,
                              width: 182.adaptSize,
                              padding: EdgeInsets.symmetric(
                                horizontal: 27.h,
                                vertical: 29.v,
                              ),
                              decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder50,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgLayer1,
                                height: 106.v,
                                width: 111.h,
                                alignment: Alignment.center,
                              ),
                            ),
                            SizedBox(height: 13.v),
                            Text(
                              "lbl_starfish".tr,
                              style: theme.textTheme.displayMedium,
                            ),
                            SizedBox(height: 209.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup1,
                              height: 141.v,
                              width: 428.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
