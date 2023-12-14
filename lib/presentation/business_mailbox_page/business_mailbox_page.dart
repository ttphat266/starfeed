import '../business_mailbox_page/widgets/userprofilesection1_item_widget.dart';
import 'bloc/business_mailbox_bloc.dart';
import 'models/business_mailbox_model.dart';
import 'models/userprofilesection1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BusinessMailboxPage extends StatefulWidget {
  const BusinessMailboxPage({Key? key})
      : super(
          key: key,
        );

  @override
  BusinessMailboxPageState createState() => BusinessMailboxPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BusinessMailboxBloc>(
      create: (context) => BusinessMailboxBloc(BusinessMailboxState(
        businessMailboxModelObj: BusinessMailboxModel(),
      ))
        ..add(BusinessMailboxInitialEvent()),
      child: BusinessMailboxPage(),
    );
  }
}

class BusinessMailboxPageState extends State<BusinessMailboxPage>
    with AutomaticKeepAliveClientMixin<BusinessMailboxPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimaryContainer,
          child: Column(
            children: [
              _buildMyJobsSection(context),
              _buildUserProfileSection(context),
              SizedBox(height: 56.v),
              _buildEditTextSection(context),
              SizedBox(height: 79.v),
              CustomImageView(
                imagePath: ImageConstant.imgBottomBarGray100,
                height: 100.v,
                width: 428.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMyJobsSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 52.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 102.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_my_jobs".tr,
                    style: CustomTextStyles.titleMediumMedium18,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDollar,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    left: 6.h,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Opacity(
            opacity: 0.6,
            child: SizedBox(
              width: 201.h,
              child: Text(
                "msg_a_streamlined_portal".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallInterBlack90011_2.copyWith(
                  height: 1.56,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 51.h,
          right: 277.h,
        ),
        child: BlocSelector<BusinessMailboxBloc, BusinessMailboxState,
            BusinessMailboxModel?>(
          selector: (state) => state.businessMailboxModelObj,
          builder: (context, businessMailboxModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 2.v,
                );
              },
              itemCount:
                  businessMailboxModelObj?.userprofilesection1ItemList.length ??
                      0,
              itemBuilder: (context, index) {
                Userprofilesection1ItemModel model = businessMailboxModelObj
                        ?.userprofilesection1ItemList[index] ??
                    Userprofilesection1ItemModel();
                return Userprofilesection1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: BlocSelector<BusinessMailboxBloc, BusinessMailboxState,
          TextEditingController?>(
        selector: (state) => state.editTextController,
        builder: (context, editTextController) {
          return CustomTextFormField(
            width: 20.h,
            controller: editTextController,
            alignment: Alignment.centerLeft,
            borderDecoration: TextFormFieldStyleHelper.fillPrimary,
            fillColor: theme.colorScheme.primary,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return BlocSelector<BusinessMailboxBloc, BusinessMailboxState,
        TextEditingController?>(
      selector: (state) => state.editTextController1,
      builder: (context, editTextController1) {
        return CustomTextFormField(
          width: 5.h,
          controller: editTextController1,
          alignment: Alignment.topCenter,
          borderDecoration: TextFormFieldStyleHelper.fillPrimary,
          fillColor: theme.colorScheme.primary,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return BlocSelector<BusinessMailboxBloc, BusinessMailboxState,
        TextEditingController?>(
      selector: (state) => state.editTextController2,
      builder: (context, editTextController2) {
        return CustomTextFormField(
          width: 5.h,
          controller: editTextController2,
          textInputAction: TextInputAction.done,
          alignment: Alignment.topCenter,
          borderDecoration: TextFormFieldStyleHelper.fillPrimary,
          fillColor: theme.colorScheme.primary,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEditTextSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 18.h,
        right: 12.h,
      ),
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.outlineRedA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 7.v),
          Container(
            margin: EdgeInsets.only(right: 7.h),
            padding: EdgeInsets.symmetric(
              horizontal: 28.h,
              vertical: 32.v,
            ),
            decoration: AppDecoration.fillGray5002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder19,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 1.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 94.h,
                          margin: EdgeInsets.only(right: 4.h),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: 0.6,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgHiconLinear,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                ),
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: Text(
                                  "lbl_whatsonrap".tr,
                                  style:
                                      CustomTextStyles.interBlack900Medium4_2,
                                ),
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgHiconOutlineBlack9002x2,
                                  height: 2.adaptSize,
                                  width: 2.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 1.h,
                                    bottom: 3.v,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Opacity(
                                opacity: 0.7,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgHiconBoldMenuGray90001,
                                  height: 4.adaptSize,
                                  width: 4.adaptSize,
                                ),
                              ),
                              Opacity(
                                opacity: 0.7,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgMingcutePencil2Fill,
                                  height: 4.adaptSize,
                                  width: 4.adaptSize,
                                  margin: EdgeInsets.only(left: 5.h),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 79.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 3.h,
                              vertical: 2.v,
                            ),
                            decoration: AppDecoration.outlineBlack9003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder3,
                            ),
                            child: Row(
                              children: [
                                Opacity(
                                  opacity: 0.4,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgSearch2,
                                    height: 5.adaptSize,
                                    width: 5.adaptSize,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    "lbl_th".tr,
                                    style: CustomTextStyles.interBlack900Light,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 3.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_filter".tr,
                              style: CustomTextStyles.interBlueA400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 63.h,
                          margin: EdgeInsets.only(
                            left: 14.h,
                            right: 20.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_primary".tr,
                                style: CustomTextStyles.interPrimarySemiBold,
                              ),
                              Text(
                                "lbl_offers".tr,
                                style: CustomTextStyles.interBluegray400,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 2.v),
                      _buildEditText(context),
                      SizedBox(height: 7.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse217x17,
                            height: 17.adaptSize,
                            width: 17.adaptSize,
                            radius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              top: 3.v,
                              bottom: 2.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Opacity(
                                      opacity: 0.8,
                                      child: Text(
                                        "lbl_leonard_lotea".tr,
                                        style: CustomTextStyles
                                            .interBlack900SemiBold,
                                      ),
                                    ),
                                    Container(
                                      width: 5.h,
                                      margin: EdgeInsets.only(
                                        left: 3.h,
                                        bottom: 2.v,
                                      ),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1.h),
                                      decoration:
                                          AppDecoration.fillPrimary1.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3,
                                      ),
                                      child: Text(
                                        "lbl_1".tr,
                                        style: CustomTextStyles
                                            .proximaNovaPrimaryContainer,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1.v),
                                Opacity(
                                  opacity: 0.6,
                                  child: Text(
                                    "lbl_shared_a_video".tr,
                                    style:
                                        CustomTextStyles.interBlack900Regular,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Opacity(
                            opacity: 0.4,
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgHiconOutlineBlack9005x5,
                              height: 5.adaptSize,
                              width: 5.adaptSize,
                              margin: EdgeInsets.only(
                                left: 26.h,
                                top: 6.v,
                                bottom: 5.v,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse25,
                            height: 17.adaptSize,
                            width: 17.adaptSize,
                            radius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              top: 3.v,
                              bottom: 2.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Opacity(
                                      opacity: 0.8,
                                      child: Text(
                                        "lbl_luta_lia".tr,
                                        style: CustomTextStyles
                                            .interBlack900SemiBold,
                                      ),
                                    ),
                                    Container(
                                      height: 4.v,
                                      width: 5.h,
                                      margin: EdgeInsets.only(
                                        left: 2.h,
                                        bottom: 1.v,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          _buildEditText1(context),
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                              "lbl_2".tr,
                                              style: CustomTextStyles
                                                  .proximaNovaPrimaryContainer,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1.v),
                                Opacity(
                                  opacity: 0.6,
                                  child: Text(
                                    "msg_uxsantos_look_at".tr,
                                    style:
                                        CustomTextStyles.interBlack900Regular,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Opacity(
                            opacity: 0.4,
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgHiconOutlineBlack9005x5,
                              height: 5.adaptSize,
                              width: 5.adaptSize,
                              margin: EdgeInsets.only(
                                left: 18.h,
                                top: 5.v,
                                bottom: 6.v,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          right: 4.h,
                        ),
                        child: _buildLeonardiBertSection(
                          context,
                          leonardiBertText: "lbl_fab_yola".tr,
                          youDidNotLmaoText: "msg_you_did_not_lmao".tr,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          right: 4.h,
                        ),
                        child: _buildLeonardiBertSection(
                          context,
                          leonardiBertText: "lbl_leonardi_bert".tr,
                          youDidNotLmaoText: "msg_you_did_not_lmao".tr,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Container(
                        width: 91.h,
                        margin: EdgeInsets.only(
                          left: 3.h,
                          right: 4.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse28,
                              height: 17.adaptSize,
                              width: 17.adaptSize,
                              radius: BorderRadius.circular(
                                8.h,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 3.v,
                                bottom: 2.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Opacity(
                                        opacity: 0.8,
                                        child: Text(
                                          "lbl_pailo_arbit".tr,
                                          style: CustomTextStyles
                                              .interBlack900SemiBold,
                                        ),
                                      ),
                                      Container(
                                        width: 6.h,
                                        margin: EdgeInsets.only(
                                          left: 2.h,
                                          bottom: 1.v,
                                        ),
                                        padding: EdgeInsets.all(1.h),
                                        decoration:
                                            AppDecoration.fillPrimary1.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder3,
                                        ),
                                        child: Text(
                                          "lbl_4".tr,
                                          style: CustomTextStyles
                                              .montserratPrimaryContainer,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 1.v),
                                  Opacity(
                                    opacity: 0.6,
                                    child: Text(
                                      "msg_lmaoo_this_one_had".tr,
                                      style:
                                          CustomTextStyles.interBlack900Regular,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Opacity(
                              opacity: 0.4,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgHiconOutlineBlack9005x5,
                                height: 5.adaptSize,
                                width: 5.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 5.v,
                                  bottom: 6.v,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Container(
                        width: 91.h,
                        margin: EdgeInsets.only(
                          left: 3.h,
                          right: 4.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgInfo,
                              height: 17.v,
                              width: 21.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 2.h,
                                top: 3.v,
                                bottom: 2.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Opacity(
                                    opacity: 0.8,
                                    child: Text(
                                      "lbl_sujan_sujan".tr,
                                      style: CustomTextStyles
                                          .interBlack900SemiBold,
                                    ),
                                  ),
                                  SizedBox(height: 1.v),
                                  Opacity(
                                    opacity: 0.6,
                                    child: Text(
                                      "msg_no_you_have_to_do".tr,
                                      style:
                                          CustomTextStyles.interBlack900Regular,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Opacity(
                              opacity: 0.4,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgHiconOutlineBlack9005x5,
                                height: 5.adaptSize,
                                width: 5.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 5.v,
                                  bottom: 6.v,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgInfo,
                            height: 17.v,
                            width: 21.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 2.h,
                              top: 3.v,
                              bottom: 2.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Opacity(
                                      opacity: 0.8,
                                      child: Text(
                                        "lbl_luta_lia".tr,
                                        style: CustomTextStyles
                                            .interBlack900SemiBold,
                                      ),
                                    ),
                                    Container(
                                      height: 4.v,
                                      width: 5.h,
                                      margin: EdgeInsets.only(
                                        left: 2.h,
                                        bottom: 1.v,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          _buildEditText2(context),
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                              "lbl_2".tr,
                                              style: CustomTextStyles
                                                  .proximaNovaPrimaryContainer,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1.v),
                                Opacity(
                                  opacity: 0.6,
                                  child: Text(
                                    "msg_uxsantos_look_at".tr,
                                    style:
                                        CustomTextStyles.interBlack900Regular,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Opacity(
                            opacity: 0.4,
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgHiconOutlineBlack9005x5,
                              height: 5.adaptSize,
                              width: 5.adaptSize,
                              margin: EdgeInsets.only(
                                left: 18.h,
                                top: 5.v,
                                bottom: 6.v,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          right: 4.h,
                        ),
                        child: _buildLeonardiBertSection(
                          context,
                          leonardiBertText: "lbl_fab_yola".tr,
                          youDidNotLmaoText: "msg_you_did_not_lmao".tr,
                        ),
                      ),
                      SizedBox(height: 3.v),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 36.v,
                    right: 2.h,
                    bottom: 78.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Row(
                          children: [
                            Text(
                              "lbl_inbox".tr,
                              style: CustomTextStyles.titleMediumMedium18,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgIconParkSolidEightKey,
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                              margin: EdgeInsets.only(left: 6.h),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Opacity(
                        opacity: 0.6,
                        child: SizedBox(
                          width: 204.h,
                          child: Text(
                            "msg_the_hub_for_businesses".tr,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallInterBlack90011_2
                                .copyWith(
                              height: 1.56,
                            ),
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
    );
  }

  /// Common widget
  Widget _buildLeonardiBertSection(
    BuildContext context, {
    required String leonardiBertText,
    required String youDidNotLmaoText,
  }) {
    return SizedBox(
      width: 91.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse27,
            height: 17.adaptSize,
            width: 17.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    leonardiBertText,
                    style: CustomTextStyles.interGray90001SemiBold.copyWith(
                      color: appTheme.gray90001.withOpacity(0.64),
                    ),
                  ),
                ),
                SizedBox(height: 1.v),
                Align(
                  alignment: Alignment.center,
                  child: Opacity(
                    opacity: 0.6,
                    child: Text(
                      youDidNotLmaoText,
                      style: CustomTextStyles.interGray90001.copyWith(
                        color: appTheme.gray90001.withOpacity(0.56),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgHiconOutlineBlack9005x5,
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(
                top: 3.v,
                bottom: 8.v,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
