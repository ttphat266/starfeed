import 'bloc/business_mailbox_tab_container_bloc.dart';
import 'models/business_mailbox_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/presentation/influencer_mailbox_one_page/influencer_mailbox_one_page.dart';

class BusinessMailboxTabContainerScreen extends StatefulWidget {
  const BusinessMailboxTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BusinessMailboxTabContainerScreenState createState() =>
      BusinessMailboxTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BusinessMailboxTabContainerBloc>(
      create: (context) =>
          BusinessMailboxTabContainerBloc(BusinessMailboxTabContainerState(
        businessMailboxTabContainerModelObj: BusinessMailboxTabContainerModel(),
      ))
            ..add(BusinessMailboxTabContainerInitialEvent()),
      child: BusinessMailboxTabContainerScreen(),
    );
  }
}

class BusinessMailboxTabContainerScreenState
    extends State<BusinessMailboxTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<BusinessMailboxTabContainerBloc,
        BusinessMailboxTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 58.v),
                  Text(
                    "lbl_choose_mailbox".tr,
                    style: CustomTextStyles.titleMediumMedium_1,
                  ),
                  SizedBox(height: 74.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: AppDecoration.fillGray5002.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder19,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "lbl_my_jobs".tr,
                                  style:
                                      CustomTextStyles.interBlack900Medium4_1,
                                ),
                                SizedBox(height: 8.v),
                                Container(
                                  height: 13.v,
                                  width: 99.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray20001,
                                    borderRadius: BorderRadius.circular(
                                      1.h,
                                    ),
                                  ),
                                  child: TabBar(
                                    controller: tabviewController,
                                    labelPadding: EdgeInsets.zero,
                                    labelColor: theme.colorScheme.primary,
                                    labelStyle: TextStyle(
                                      fontSize: 3.835751533508301.fSize,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    unselectedLabelColor:
                                        appTheme.black900.withOpacity(0.49),
                                    unselectedLabelStyle: TextStyle(
                                      fontSize: 3.835751533508301.fSize,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    indicator: BoxDecoration(
                                      color: theme.colorScheme.primaryContainer
                                          .withOpacity(1),
                                      borderRadius: BorderRadius.circular(
                                        2.h,
                                      ),
                                    ),
                                    tabs: [
                                      Tab(
                                        child: Text(
                                          "msg_pending_approval".tr,
                                        ),
                                      ),
                                      Tab(
                                        child: Opacity(
                                          opacity: 0.4,
                                          child: Text(
                                            "lbl_active".tr,
                                          ),
                                        ),
                                      ),
                                      Tab(
                                        child: Opacity(
                                          opacity: 0.4,
                                          child: Text(
                                            "lbl_completed".tr,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 746.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        InfluencerMailboxOnePage.builder(context),
                        InfluencerMailboxOnePage.builder(context),
                        InfluencerMailboxOnePage.builder(context),
                      ],
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
}
