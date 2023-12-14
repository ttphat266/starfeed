import 'bloc/delivery_two_bloc.dart';import 'models/delivery_two_model.dart';import 'package:flutter/material.dart';import 'package:phat_s_application1/core/app_export.dart';import 'package:phat_s_application1/widgets/custom_elevated_button.dart';import 'package:phat_s_application1/widgets/custom_outlined_button.dart';class DeliveryTwoScreen extends StatelessWidget {const DeliveryTwoScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<DeliveryTwoBloc>(create: (context) => DeliveryTwoBloc(DeliveryTwoState(deliveryTwoModelObj: DeliveryTwoModel()))..add(DeliveryTwoInitialEvent()), child: DeliveryTwoScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<DeliveryTwoBloc, DeliveryTwoState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: appTheme.gray100, body: SizedBox(width: double.maxFinite, child: SingleChildScrollView(child: Column(children: [_buildHiconLinearStack(context), SizedBox(height: 22.v), Align(alignment: Alignment.centerLeft, child: Opacity(opacity: 0.8, child: Padding(padding: EdgeInsets.only(left: 33.h), child: Text("lbl_link".tr, style: CustomTextStyles.titleMediumBlack900_2)))), SizedBox(height: 7.v), _buildFrameStack(context), SizedBox(height: 10.v), _buildDescriptionStack(context), SizedBox(height: 23.v), Align(alignment: Alignment.centerLeft, child: Opacity(opacity: 0.8, child: Padding(padding: EdgeInsets.only(left: 33.h), child: Text("lbl_attachments".tr, style: CustomTextStyles.titleMediumBlack900_2)))), SizedBox(height: 18.v), _buildAbcdHorizontalScroll(context), SizedBox(height: 38.v), _buildAcceptDeliveryColumn(context), SizedBox(height: 9.v), _buildRefuseDeliveryColumn(context), SizedBox(height: 94.v)])))));}); } 
/// Section Widget
Widget _buildHiconLinearStack(BuildContext context) { return SizedBox(height: 561.v, width: double.maxFinite, child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgEllipse119, height: 220.v, width: 214.h, alignment: Alignment.topRight), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 23.h, top: 29.v), child: Row(children: [Opacity(opacity: 0.6, child: CustomImageView(imagePath: ImageConstant.imgHiconLinear, height: 28.adaptSize, width: 28.adaptSize)), Opacity(opacity: 0.8, child: Padding(padding: EdgeInsets.only(left: 20.h, top: 5.v, bottom: 5.v), child: Text("msg_influencer_name".tr, style: theme.textTheme.titleSmall)))]))), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(top: 70.v), child: SizedBox(width: double.maxFinite, child: Divider(color: theme.colorScheme.primaryContainer.withOpacity(1))))), Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(left: 33.h, right: 25.h), decoration: AppDecoration.fillPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(width: 370.h, padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.v), decoration: AppDecoration.fillGray200, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Opacity(opacity: 0.8, child: Text("lbl_delivery_1".tr, style: CustomTextStyles.titleMediumBlack900_2))])), SizedBox(height: 19.v), Padding(padding: EdgeInsets.only(left: 18.h, right: 25.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgEllipse53, height: 43.adaptSize, width: 43.adaptSize, radius: BorderRadius.circular(21.h), margin: EdgeInsets.only(bottom: 327.v)), Expanded(child: Padding(padding: EdgeInsets.only(left: 6.h, top: 13.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Opacity(opacity: 0.8, child: Text("msg_influencer_name".tr, style: theme.textTheme.titleSmall))), SizedBox(height: 7.v), Opacity(opacity: 0.7, child: SizedBox(width: 277.h, child: Text("msg_lorem_ipsum_dolor2".tr, maxLines: 5, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallInterBlack90012_3))), SizedBox(height: 7.v), Opacity(opacity: 0.7, child: SizedBox(width: 277.h, child: Text("msg_lorem_ipsum_dolor2".tr, maxLines: 5, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallInterBlack90012_3))), SizedBox(height: 7.v), Opacity(opacity: 0.7, child: SizedBox(width: 277.h, child: Text("msg_lorem_ipsum_dolor2".tr, maxLines: 5, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallInterBlack90012_3))), SizedBox(height: 7.v), Opacity(opacity: 0.7, child: SizedBox(width: 277.h, child: Text("msg_lorem_ipsum_dolor2".tr, maxLines: 5, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallInterBlack90012_3)))])))])), SizedBox(height: 14.v)]))), Align(alignment: Alignment.topLeft, child: Opacity(opacity: 0.4, child: Padding(padding: EdgeInsets.only(left: 33.h, top: 94.v), child: Text("lbl_6_aug_2023".tr, style: CustomTextStyles.titleSmallBlack900Medium))))])); } 
/// Section Widget
Widget _buildFrameStack(BuildContext context) { return SizedBox(height: 42.v, width: 369.h, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.center, child: Container(margin: EdgeInsets.only(left: 1.h), padding: EdgeInsets.symmetric(vertical: 12.v), decoration: AppDecoration.fillPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), GestureDetector(onTap: () {onTapTxtDescription(context);}, child: Text("msg_https_www_fig".tr, style: CustomTextStyles.bodySmallInterBlueA400.copyWith(decoration: TextDecoration.underline)))]))), Align(alignment: Alignment.centerLeft, child: Container(height: 42.v, width: 10.h, decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.horizontal(left: Radius.circular(5.h)))))])); } 
/// Section Widget
Widget _buildDescriptionStack(BuildContext context) { return SizedBox(height: 43.v, width: 369.h, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.center, child: SizedBox(height: 42.v, width: 369.h, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.center, child: Container(margin: EdgeInsets.only(left: 1.h), padding: EdgeInsets.symmetric(vertical: 12.v), decoration: AppDecoration.fillPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), GestureDetector(onTap: () {onTapTxtDescription1(context);}, child: Text("msg_https_www_fig".tr, style: CustomTextStyles.bodySmallInterBlueA400.copyWith(decoration: TextDecoration.underline)))]))), Align(alignment: Alignment.centerLeft, child: Container(height: 42.v, width: 10.h, decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.horizontal(left: Radius.circular(5.h)))))]))), Align(alignment: Alignment.centerLeft, child: Container(height: 42.v, width: 10.h, decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.horizontal(left: Radius.circular(5.h)))))])); } 
/// Section Widget
Widget _buildAbcdHorizontalScroll(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(left: 33.h), child: IntrinsicWidth(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildAbcStack(context, dynamicText: "lbl_abcd".tr, dynamicImage: ImageConstant.imgRectangle), Padding(padding: EdgeInsets.only(left: 16.h), child: _buildAbcStack(context, dynamicText: "lbl_abc".tr, dynamicImage: ImageConstant.imgRectangle123x169)), Container(height: 158.v, width: 169.h, margin: EdgeInsets.only(left: 16.h), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 8.v), decoration: AppDecoration.outlineBlack9004.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 123.v), Text("lbl_abc".tr, style: CustomTextStyles.titleSmallBlack900Medium_1)]))), CustomImageView(imagePath: ImageConstant.imgRectangle123x169, height: 123.v, width: 169.h, radius: BorderRadius.vertical(top: Radius.circular(10.h)), alignment: Alignment.topCenter)]))])))); } 
/// Section Widget
Widget _buildAcceptDeliveryColumn(BuildContext context) { return Container(width: 393.h, margin: EdgeInsets.only(left: 12.h, right: 23.h), padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 7.v), decoration: AppDecoration.outlineRedA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), CustomElevatedButton(text: "lbl_accept_delivery".tr, margin: EdgeInsets.only(left: 11.h))])); } 
/// Section Widget
Widget _buildRefuseDeliveryColumn(BuildContext context) { return Container(margin: EdgeInsets.only(left: 16.h, right: 19.h), padding: EdgeInsets.all(6.h), decoration: AppDecoration.outlineRedA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomOutlinedButton(text: "lbl_refuse_delivery".tr, buttonStyle: CustomButtonStyles.outlinePrimary), SizedBox(height: 25.v), Text("msg_report_a_problem".tr, style: CustomTextStyles.labelMediumPrimary)])); } 
/// Common widget
Widget _buildAbcStack(BuildContext context, {required String dynamicText, required String dynamicImage, }) { return SizedBox(height: 158.v, width: 169.h, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.center, child: Container(width: 168.h, padding: EdgeInsets.all(4.h), decoration: AppDecoration.outlineBlack9004.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(left: 6.h, top: 127.v, bottom: 3.v), child: Text(dynamicText, style: CustomTextStyles.titleSmallBlack900Medium_1.copyWith(color: appTheme.black900))), CustomImageView(imagePath: ImageConstant.imgHiconOutlinePrimary, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 123.v))]))), CustomImageView(imagePath: dynamicImage, height: 123.v, width: 169.h, radius: BorderRadius.vertical(top: Radius.circular(10.h)), alignment: Alignment.topCenter)])); } 

onTapTxtDescription(BuildContext context) { // TODO: implement Actions
 } 

onTapTxtDescription1(BuildContext context) { // TODO: implement Actions
 } 
 }
