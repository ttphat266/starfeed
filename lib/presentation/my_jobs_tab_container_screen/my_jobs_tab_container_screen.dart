import 'bloc/my_jobs_tab_container_bloc.dart';
import 'models/my_jobs_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/presentation/my_jobs_eight_page/my_jobs_eight_page.dart';
import 'package:phat_s_application1/presentation/my_jobs_four_page/my_jobs_four_page.dart';

class MyJobsTabContainerScreen extends StatefulWidget {
  const MyJobsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MyJobsTabContainerScreenState createState() =>
      MyJobsTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyJobsTabContainerBloc>(
      create: (context) => MyJobsTabContainerBloc(MyJobsTabContainerState(
        myJobsTabContainerModelObj: MyJobsTabContainerModel(),
      ))
        ..add(MyJobsTabContainerInitialEvent()),
      child: MyJobsTabContainerScreen(),
    );
  }
}

class MyJobsTabContainerScreenState extends State<MyJobsTabContainerScreen>
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

    return BlocBuilder<MyJobsTabContainerBloc, MyJobsTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildMyJobsTabView(context),
                  SizedBox(
                    height: 782.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        MyJobsEightPage.builder(context),
                        MyJobsFourPage.builder(context),
                        MyJobsFourPage.builder(context),
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

  /// Section Widget
  Widget _buildMyJobsTabView(BuildContext context) {
    return SizedBox(
      height: 220.v,
      width: 408.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse122,
            height: 220.v,
            width: 214.h,
            alignment: Alignment.centerRight,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 162.h,
                top: 38.v,
              ),
              child: Text(
                "lbl_my_jobs".tr,
                style: CustomTextStyles.titleMediumMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 63.v,
              width: 95.h,
              margin: EdgeInsets.only(right: 140.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
                border: Border.all(
                  color: appTheme.redA700,
                  width: 2.h,
                ),
              ),
            ),
          ),
          Container(
            height: 51.v,
            width: 388.h,
            margin: EdgeInsets.only(bottom: 76.v),
            decoration: BoxDecoration(
              color: appTheme.gray20001,
              borderRadius: BorderRadius.circular(
                7.h,
              ),
            ),
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.primary,
              labelStyle: TextStyle(
                fontSize: 15.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelColor: appTheme.black900.withOpacity(0.49),
              unselectedLabelStyle: TextStyle(
                fontSize: 15.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
              indicator: BoxDecoration(
                color: theme.colorScheme.primaryContainer.withOpacity(1),
                borderRadius: BorderRadius.circular(
                  8.h,
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
    );
  }
}
