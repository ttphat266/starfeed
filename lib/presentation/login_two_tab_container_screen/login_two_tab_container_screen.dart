import 'bloc/login_two_tab_container_bloc.dart';
import 'models/login_two_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';

class LoginTwoTabContainerScreen extends StatefulWidget {
  const LoginTwoTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginTwoTabContainerScreenState createState() =>
      LoginTwoTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginTwoTabContainerBloc>(
      create: (context) => LoginTwoTabContainerBloc(LoginTwoTabContainerState(
        loginTwoTabContainerModelObj: LoginTwoTabContainerModel(),
      ))
        ..add(LoginTwoTabContainerInitialEvent()),
      child: LoginTwoTabContainerScreen(),
    );
  }
}

class LoginTwoTabContainerScreenState extends State<LoginTwoTabContainerScreen>
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

    return BlocBuilder<LoginTwoTabContainerBloc, LoginTwoTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 97.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: 828.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 218.v),
                              height: 610.v,
                              child: TabBarView(
                                controller: tabviewController,
                                children: [],
                              ),
                            ),
                            _buildWelcomeBackTabView(context),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildWelcomeBackTabView(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 19.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup59,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.6,
              child: Text(
                "lbl_welcome_back".tr,
                style: CustomTextStyles.headlineLargeBlack900,
              ),
            ),
            SizedBox(height: 12.v),
            Opacity(
              opacity: 0.5,
              child: Text(
                "msg_to_your_starfish".tr,
                style: CustomTextStyles.titleLargeLexendBlack900,
              ),
            ),
            SizedBox(height: 117.v),
            Container(
              height: 26.v,
              width: 390.h,
              child: TabBar(
                controller: tabviewController,
                labelPadding: EdgeInsets.zero,
                labelColor: appTheme.black900.withOpacity(0.64),
                labelStyle: TextStyle(
                  fontSize: 16.fSize,
                  fontFamily: 'Proxima Nova',
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelColor: appTheme.black900.withOpacity(0.56),
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
            ),
          ],
        ),
      ),
    );
  }
}
