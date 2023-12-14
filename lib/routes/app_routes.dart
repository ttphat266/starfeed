import 'package:flutter/material.dart';
import 'package:phat_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:phat_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:phat_s_application1/presentation/login_one_tab_container_screen/login_one_tab_container_screen.dart';
import 'package:phat_s_application1/presentation/register_screen/register_screen.dart';
import 'package:phat_s_application1/presentation/login_three_screen/login_three_screen.dart';
import 'package:phat_s_application1/presentation/login_six_screen/login_six_screen.dart';
import 'package:phat_s_application1/presentation/login_screen/login_screen.dart';
import 'package:phat_s_application1/presentation/login_five_screen/login_five_screen.dart';
import 'package:phat_s_application1/presentation/let_s_start_screen/let_s_start_screen.dart';
import 'package:phat_s_application1/presentation/cart_screen/cart_screen.dart';
import 'package:phat_s_application1/presentation/confirm_order_screen/confirm_order_screen.dart';
import 'package:phat_s_application1/presentation/payment_screen/payment_screen.dart';
import 'package:phat_s_application1/presentation/payment_two_screen/payment_two_screen.dart';
import 'package:phat_s_application1/presentation/payment_one_screen/payment_one_screen.dart';
import 'package:phat_s_application1/presentation/payment_three_screen/payment_three_screen.dart';
import 'package:phat_s_application1/presentation/influncer_profile_menu_screen/influncer_profile_menu_screen.dart';
import 'package:phat_s_application1/presentation/checkout_details_screen/checkout_details_screen.dart';
import 'package:phat_s_application1/presentation/my_profile_influencer_screen/my_profile_influencer_screen.dart';
import 'package:phat_s_application1/presentation/explore_business_one_screen/explore_business_one_screen.dart';
import 'package:phat_s_application1/presentation/explore_business_screen/explore_business_screen.dart';
import 'package:phat_s_application1/presentation/history_screen/history_screen.dart';
import 'package:phat_s_application1/presentation/business_profile_user_screen/business_profile_user_screen.dart';
import 'package:phat_s_application1/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:phat_s_application1/presentation/number_of_completed_transactions_one_screen/number_of_completed_transactions_one_screen.dart';
import 'package:phat_s_application1/presentation/number_of_completed_transactions_screen/number_of_completed_transactions_screen.dart';
import 'package:phat_s_application1/presentation/business_mailbox_one_screen/business_mailbox_one_screen.dart';
import 'package:phat_s_application1/presentation/business_mailbox_tab_container_screen/business_mailbox_tab_container_screen.dart';
import 'package:phat_s_application1/presentation/report_screen/report_screen.dart';
import 'package:phat_s_application1/presentation/delivery_screen/delivery_screen.dart';
import 'package:phat_s_application1/presentation/delivery_two_screen/delivery_two_screen.dart';
import 'package:phat_s_application1/presentation/my_jobs_one_screen/my_jobs_one_screen.dart';
import 'package:phat_s_application1/presentation/my_jobs_three_screen/my_jobs_three_screen.dart';
import 'package:phat_s_application1/presentation/my_jobs_tab_container_screen/my_jobs_tab_container_screen.dart';
import 'package:phat_s_application1/presentation/inbox_one_screen/inbox_one_screen.dart';
import 'package:phat_s_application1/presentation/inbox_screen/inbox_screen.dart';
import 'package:phat_s_application1/presentation/delivery_three_screen/delivery_three_screen.dart';
import 'package:phat_s_application1/presentation/delivery_one_screen/delivery_one_screen.dart';
import 'package:phat_s_application1/presentation/report_one_screen/report_one_screen.dart';
import 'package:phat_s_application1/presentation/explore_business_two_screen/explore_business_two_screen.dart';
import 'package:phat_s_application1/presentation/notifications_screen/notifications_screen.dart';
import 'package:phat_s_application1/presentation/my_information_screen/my_information_screen.dart';
import 'package:phat_s_application1/presentation/menu_screen/menu_screen.dart';
import 'package:phat_s_application1/presentation/notification_settings_screen/notification_settings_screen.dart';
import 'package:phat_s_application1/presentation/favorites_screen/favorites_screen.dart';
import 'package:phat_s_application1/presentation/splash_screen_one_screen/splash_screen_one_screen.dart';
import 'package:phat_s_application1/presentation/sign_up_screen_one_screen/sign_up_screen_one_screen.dart';
import 'package:phat_s_application1/presentation/login_two_tab_container_screen/login_two_tab_container_screen.dart';
import 'package:phat_s_application1/presentation/register_one_screen/register_one_screen.dart';
import 'package:phat_s_application1/presentation/login_ten_screen/login_ten_screen.dart';
import 'package:phat_s_application1/presentation/login_eleven_screen/login_eleven_screen.dart';
import 'package:phat_s_application1/presentation/login_eight_screen/login_eight_screen.dart';
import 'package:phat_s_application1/presentation/login_nine_screen/login_nine_screen.dart';
import 'package:phat_s_application1/presentation/let_s_start_one_screen/let_s_start_one_screen.dart';
import 'package:phat_s_application1/presentation/analysis_screen/analysis_screen.dart';
import 'package:phat_s_application1/presentation/my_earnings_screen/my_earnings_screen.dart';
import 'package:phat_s_application1/presentation/menu_one_screen/menu_one_screen.dart';
import 'package:phat_s_application1/presentation/notification_settings_one_screen/notification_settings_one_screen.dart';
import 'package:phat_s_application1/presentation/my_information_one_screen/my_information_one_screen.dart';
import 'package:phat_s_application1/presentation/explore_influencer_screen/explore_influencer_screen.dart';
import 'package:phat_s_application1/presentation/my_profile_influencer_one_screen/my_profile_influencer_one_screen.dart';
import 'package:phat_s_application1/presentation/edit_profile_one_screen/edit_profile_one_screen.dart';
import 'package:phat_s_application1/presentation/edit_profile_two_screen/edit_profile_two_screen.dart';
import 'package:phat_s_application1/presentation/edit_profile_three_screen/edit_profile_three_screen.dart';
import 'package:phat_s_application1/presentation/add_social_media_one_screen/add_social_media_one_screen.dart';
import 'package:phat_s_application1/presentation/add_social_media_screen/add_social_media_screen.dart';
import 'package:phat_s_application1/presentation/add_social_media_two_screen/add_social_media_two_screen.dart';
import 'package:phat_s_application1/presentation/verification_one_screen/verification_one_screen.dart';
import 'package:phat_s_application1/presentation/verification_screen/verification_screen.dart';
import 'package:phat_s_application1/presentation/influencer_mailbox_screen/influencer_mailbox_screen.dart';
import 'package:phat_s_application1/presentation/payment_four_screen/payment_four_screen.dart';
import 'package:phat_s_application1/presentation/my_jobs_seven_screen/my_jobs_seven_screen.dart';
import 'package:phat_s_application1/presentation/my_jobs_five_screen/my_jobs_five_screen.dart';
import 'package:phat_s_application1/presentation/my_jobs_six_screen/my_jobs_six_screen.dart';
import 'package:phat_s_application1/presentation/inbox_two_screen/inbox_two_screen.dart';
import 'package:phat_s_application1/presentation/inbox_three_screen/inbox_three_screen.dart';
import 'package:phat_s_application1/presentation/inbox_four_screen/inbox_four_screen.dart';
import 'package:phat_s_application1/presentation/offer_one_screen/offer_one_screen.dart';
import 'package:phat_s_application1/presentation/offer_screen/offer_screen.dart';
import 'package:phat_s_application1/presentation/inbox_five_screen/inbox_five_screen.dart';
import 'package:phat_s_application1/presentation/business_profile_user_one_screen/business_profile_user_one_screen.dart';
import 'package:phat_s_application1/presentation/business_profile_user_two_screen/business_profile_user_two_screen.dart';
import 'package:phat_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginSevenPage = '/login_seven_page';

  static const String loginOnePage = '/login_one_page';

  static const String loginOneTabContainerScreen =
      '/login_one_tab_container_screen';

  static const String registerScreen = '/register_screen';

  static const String loginThreeScreen = '/login_three_screen';

  static const String loginSixScreen = '/login_six_screen';

  static const String loginScreen = '/login_screen';

  static const String loginFiveScreen = '/login_five_screen';

  static const String letSStartScreen = '/let_s_start_screen';

  static const String cartScreen = '/cart_screen';

  static const String confirmOrderScreen = '/confirm_order_screen';

  static const String paymentScreen = '/payment_screen';

  static const String paymentTwoScreen = '/payment_two_screen';

  static const String paymentOneScreen = '/payment_one_screen';

  static const String paymentThreeScreen = '/payment_three_screen';

  static const String influncerProfileMenuScreen =
      '/influncer_profile_menu_screen';

  static const String checkoutDetailsScreen = '/checkout_details_screen';

  static const String myProfileInfluencerScreen =
      '/my_profile_influencer_screen';

  static const String exploreBusinessOneScreen = '/explore_business_one_screen';

  static const String exploreBusinessScreen = '/explore_business_screen';

  static const String historyScreen = '/history_screen';

  static const String businessProfileUserScreen =
      '/business_profile_user_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String numberOfCompletedTransactionsOneScreen =
      '/number_of_completed_transactions_one_screen';

  static const String numberOfCompletedTransactionsScreen =
      '/number_of_completed_transactions_screen';

  static const String businessMailboxOneScreen = '/business_mailbox_one_screen';

  static const String businessMailboxPage = '/business_mailbox_page';

  static const String businessMailboxTabContainerScreen =
      '/business_mailbox_tab_container_screen';

  static const String reportScreen = '/report_screen';

  static const String deliveryScreen = '/delivery_screen';

  static const String deliveryTwoScreen = '/delivery_two_screen';

  static const String myJobsOneScreen = '/my_jobs_one_screen';

  static const String myJobsThreeScreen = '/my_jobs_three_screen';

  static const String myJobsTwoPage = '/my_jobs_two_page';

  static const String myJobsPage = '/my_jobs_page';

  static const String myJobsTabContainerScreen =
      '/my_jobs_tab_container_screen';

  static const String inboxOneScreen = '/inbox_one_screen';

  static const String inboxScreen = '/inbox_screen';

  static const String deliveryThreeScreen = '/delivery_three_screen';

  static const String deliveryOneScreen = '/delivery_one_screen';

  static const String reportOneScreen = '/report_one_screen';

  static const String exploreBusinessTwoScreen = '/explore_business_two_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String myInformationScreen = '/my_information_screen';

  static const String menuScreen = '/menu_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String favoritesScreen = '/favorites_screen';

  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String signUpScreenOneScreen = '/sign_up_screen_one_screen';

  static const String loginTwoPage = '/login_two_page';

  static const String loginTwoTabContainerScreen =
      '/login_two_tab_container_screen';

  static const String loginFourPage = '/login_four_page';

  static const String registerOneScreen = '/register_one_screen';

  static const String loginTenScreen = '/login_ten_screen';

  static const String loginElevenScreen = '/login_eleven_screen';

  static const String loginEightScreen = '/login_eight_screen';

  static const String loginNineScreen = '/login_nine_screen';

  static const String letSStartOneScreen = '/let_s_start_one_screen';

  static const String analysisScreen = '/analysis_screen';

  static const String myEarningsScreen = '/my_earnings_screen';

  static const String menuOneScreen = '/menu_one_screen';

  static const String notificationSettingsOneScreen =
      '/notification_settings_one_screen';

  static const String myInformationOneScreen = '/my_information_one_screen';

  static const String exploreInfluencerScreen = '/explore_influencer_screen';

  static const String myProfileInfluencerOneScreen =
      '/my_profile_influencer_one_screen';

  static const String editProfileOneScreen = '/edit_profile_one_screen';

  static const String editProfileTwoScreen = '/edit_profile_two_screen';

  static const String editProfileThreeScreen = '/edit_profile_three_screen';

  static const String addSocialMediaOneScreen = '/add_social_media_one_screen';

  static const String addSocialMediaScreen = '/add_social_media_screen';

  static const String addSocialMediaTwoScreen = '/add_social_media_two_screen';

  static const String verificationOneScreen = '/verification_one_screen';

  static const String verificationScreen = '/verification_screen';

  static const String influencerMailboxScreen = '/influencer_mailbox_screen';

  static const String influencerMailboxOnePage = '/influencer_mailbox_one_page';

  static const String paymentFourScreen = '/payment_four_screen';

  static const String myJobsSevenScreen = '/my_jobs_seven_screen';

  static const String myJobsFiveScreen = '/my_jobs_five_screen';

  static const String myJobsSixScreen = '/my_jobs_six_screen';

  static const String myJobsFourPage = '/my_jobs_four_page';

  static const String myJobsEightPage = '/my_jobs_eight_page';

  static const String inboxTwoScreen = '/inbox_two_screen';

  static const String inboxThreeScreen = '/inbox_three_screen';

  static const String inboxFourScreen = '/inbox_four_screen';

  static const String offerOneScreen = '/offer_one_screen';

  static const String offerScreen = '/offer_screen';

  static const String inboxFiveScreen = '/inbox_five_screen';

  static const String businessProfileUserOneScreen =
      '/business_profile_user_one_screen';

  static const String businessProfileUserTwoScreen =
      '/business_profile_user_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        signUpScreen: SignUpScreen.builder,
        loginOneTabContainerScreen: LoginOneTabContainerScreen.builder,
        registerScreen: RegisterScreen.builder,
        loginThreeScreen: LoginThreeScreen.builder,
        loginSixScreen: LoginSixScreen.builder,
        loginScreen: LoginScreen.builder,
        loginFiveScreen: LoginFiveScreen.builder,
        letSStartScreen: LetSStartScreen.builder,
        cartScreen: CartScreen.builder,
        confirmOrderScreen: ConfirmOrderScreen.builder,
        paymentScreen: PaymentScreen.builder,
        paymentTwoScreen: PaymentTwoScreen.builder,
        paymentOneScreen: PaymentOneScreen.builder,
        paymentThreeScreen: PaymentThreeScreen.builder,
        influncerProfileMenuScreen: InfluncerProfileMenuScreen.builder,
        checkoutDetailsScreen: CheckoutDetailsScreen.builder,
        myProfileInfluencerScreen: MyProfileInfluencerScreen.builder,
        exploreBusinessOneScreen: ExploreBusinessOneScreen.builder,
        exploreBusinessScreen: ExploreBusinessScreen.builder,
        historyScreen: HistoryScreen.builder,
        businessProfileUserScreen: BusinessProfileUserScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        numberOfCompletedTransactionsOneScreen:
            NumberOfCompletedTransactionsOneScreen.builder,
        numberOfCompletedTransactionsScreen:
            NumberOfCompletedTransactionsScreen.builder,
        businessMailboxOneScreen: BusinessMailboxOneScreen.builder,
        businessMailboxTabContainerScreen:
            BusinessMailboxTabContainerScreen.builder,
        reportScreen: ReportScreen.builder,
        deliveryScreen: DeliveryScreen.builder,
        deliveryTwoScreen: DeliveryTwoScreen.builder,
        myJobsOneScreen: MyJobsOneScreen.builder,
        myJobsThreeScreen: MyJobsThreeScreen.builder,
        myJobsTabContainerScreen: MyJobsTabContainerScreen.builder,
        inboxOneScreen: InboxOneScreen.builder,
        inboxScreen: InboxScreen.builder,
        deliveryThreeScreen: DeliveryThreeScreen.builder,
        deliveryOneScreen: DeliveryOneScreen.builder,
        reportOneScreen: ReportOneScreen.builder,
        exploreBusinessTwoScreen: ExploreBusinessTwoScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        myInformationScreen: MyInformationScreen.builder,
        menuScreen: MenuScreen.builder,
        notificationSettingsScreen: NotificationSettingsScreen.builder,
        favoritesScreen: FavoritesScreen.builder,
        splashScreenOneScreen: SplashScreenOneScreen.builder,
        signUpScreenOneScreen: SignUpScreenOneScreen.builder,
        loginTwoTabContainerScreen: LoginTwoTabContainerScreen.builder,
        registerOneScreen: RegisterOneScreen.builder,
        loginTenScreen: LoginTenScreen.builder,
        loginElevenScreen: LoginElevenScreen.builder,
        loginEightScreen: LoginEightScreen.builder,
        loginNineScreen: LoginNineScreen.builder,
        letSStartOneScreen: LetSStartOneScreen.builder,
        analysisScreen: AnalysisScreen.builder,
        myEarningsScreen: MyEarningsScreen.builder,
        menuOneScreen: MenuOneScreen.builder,
        notificationSettingsOneScreen: NotificationSettingsOneScreen.builder,
        myInformationOneScreen: MyInformationOneScreen.builder,
        exploreInfluencerScreen: ExploreInfluencerScreen.builder,
        myProfileInfluencerOneScreen: MyProfileInfluencerOneScreen.builder,
        editProfileOneScreen: EditProfileOneScreen.builder,
        editProfileTwoScreen: EditProfileTwoScreen.builder,
        editProfileThreeScreen: EditProfileThreeScreen.builder,
        addSocialMediaOneScreen: AddSocialMediaOneScreen.builder,
        addSocialMediaScreen: AddSocialMediaScreen.builder,
        addSocialMediaTwoScreen: AddSocialMediaTwoScreen.builder,
        verificationOneScreen: VerificationOneScreen.builder,
        verificationScreen: VerificationScreen.builder,
        influencerMailboxScreen: InfluencerMailboxScreen.builder,
        paymentFourScreen: PaymentFourScreen.builder,
        myJobsSevenScreen: MyJobsSevenScreen.builder,
        myJobsFiveScreen: MyJobsFiveScreen.builder,
        myJobsSixScreen: MyJobsSixScreen.builder,
        inboxTwoScreen: InboxTwoScreen.builder,
        inboxThreeScreen: InboxThreeScreen.builder,
        inboxFourScreen: InboxFourScreen.builder,
        offerOneScreen: OfferOneScreen.builder,
        offerScreen: OfferScreen.builder,
        inboxFiveScreen: InboxFiveScreen.builder,
        businessProfileUserOneScreen: BusinessProfileUserOneScreen.builder,
        businessProfileUserTwoScreen: BusinessProfileUserTwoScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
