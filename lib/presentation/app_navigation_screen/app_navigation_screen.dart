import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "00_Splash Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "sign up screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "01_login One - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginOneTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "02_register".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.registerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "01_login Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "01_login Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "01_login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "01_login Five".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "03_let\\'s start".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.letSStartScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "07_cart".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cartScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "08_confirm order".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.confirmOrderScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "payment".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.paymentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "payment Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.paymentTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "payment One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.paymentOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "payment Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "influncer profile menu".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.influncerProfileMenuScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Checkout Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.checkoutDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Profile (Influencer)".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myProfileInfluencerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Explore Business One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.exploreBusinessOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Explore Business".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.exploreBusinessScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "History".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.historyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Business Profile: User".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.businessProfileUserScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Edit profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.editProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "number of completed transactions One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .numberOfCompletedTransactionsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "number of completed transactions".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .numberOfCompletedTransactionsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Business mailbox One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.businessMailboxOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Business mailbox - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.businessMailboxTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Report".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.reportScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Delivery".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.deliveryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Delivery Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.deliveryTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "my jobs One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myJobsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "my jobs Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myJobsThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "my jobs - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myJobsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inbox One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.inboxOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inbox".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.inboxScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Delivery Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.deliveryThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Delivery One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.deliveryOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Report One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.reportOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Explore Business Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.exploreBusinessTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notifications ".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Information".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myInformationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "menu".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.menuScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notification Settings".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationSettingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Favorites".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.favoritesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "00_Splash Screen One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.splashScreenOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "sign up screen One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.signUpScreenOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "01_login Two - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginTwoTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "02_register One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.registerOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "01_login Ten".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "01_login Eleven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "01_login Eight".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "01_login Nine".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "03_let\\'s start One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.letSStartOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Analysis".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.analysisScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Earnings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myEarningsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "menu One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.menuOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notification Settings One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationSettingsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Information One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myInformationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "explore influencer".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.exploreInfluencerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Profile (Influencer) One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myProfileInfluencerOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "edit profile One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.editProfileOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "edit profile Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.editProfileTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "edit profile Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.editProfileThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add Social Media One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.addSocialMediaOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add Social Media".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.addSocialMediaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add Social Media Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.addSocialMediaTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Verification One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.verificationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Verification".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.verificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "influencer mailbox".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.influencerMailboxScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "payment Four".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.paymentFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "my jobs Seven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myJobsSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "my jobs Five".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myJobsFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "my jobs Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myJobsSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inbox Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.inboxTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inbox Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.inboxThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inbox Four".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.inboxFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Offer One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.offerOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Offer".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.offerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inbox Five".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.inboxFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Business Profile: User One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.businessProfileUserOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Business Profile: User Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.businessProfileUserTwoScreen),
                            ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
