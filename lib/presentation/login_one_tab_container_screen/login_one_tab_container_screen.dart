import 'bloc/login_one_tab_container_bloc.dart';
import 'models/login_one_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/presentation/login_four_page/login_four_page.dart';
import 'package:phat_s_application1/presentation/login_one_page/login_one_page.dart';

class LoginOneTabContainerScreen extends StatefulWidget {
  const LoginOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginOneTabContainerScreenState createState() =>
      LoginOneTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginOneTabContainerBloc>(
      create: (context) => LoginOneTabContainerBloc(LoginOneTabContainerState(
        loginOneTabContainerModelObj: LoginOneTabContainerModel(),
      ))
        ..add(LoginOneTabContainerInitialEvent()),
      child: LoginOneTabContainerScreen(),
    );
  }
}

class LoginOneTabContainerScreenState extends State<LoginOneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LoginOneTabContainerBloc, LoginOneTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 188.v,
                        width: 332.h,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse1188x197,
                              height: 188.v,
                              width: 197.h,
                              alignment: Alignment.centerRight,
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Opacity(
                                opacity: 0.6,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.h,
                                    bottom: 53.v,
                                  ),
                                  child: Text(
                                    "lbl_welcome_back".tr,
                                    style:
                                        CustomTextStyles.headlineLargeBlack900,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Opacity(
                                opacity: 0.5,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 15.v),
                                  child: Text(
                                    "msg_to_your_starfish".tr,
                                    style: CustomTextStyles
                                        .titleLargeLexendBlack900,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 101.v),
                    _buildTabview(context),
                    SizedBox(
                      height: 610.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          LoginOnePage.builder(context),
                          LoginFourPage.builder(context),
                        ],
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

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 26.v,
      width: 390.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900.withOpacity(0.56),
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Proxima Nova',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.black900.withOpacity(0.64),
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Proxima Nova',
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: theme.colorScheme.onPrimary,
        tabs: [
          Tab(
            child: Opacity(
              opacity: 0.8,
              child: Text(
                "lbl_email".tr,
              ),
            ),
          ),
          Tab(
            child: Opacity(
              opacity: 0.6,
              child: Text(
                "lbl_phone".tr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
