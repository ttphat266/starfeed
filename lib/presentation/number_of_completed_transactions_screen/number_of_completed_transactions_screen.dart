import '../number_of_completed_transactions_screen/widgets/thirtysix_item_widget.dart';
import 'bloc/number_of_completed_transactions_bloc.dart';
import 'models/number_of_completed_transactions_model.dart';
import 'models/thirtysix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:phat_s_application1/core/app_export.dart';
import 'package:phat_s_application1/widgets/custom_elevated_button.dart';

class NumberOfCompletedTransactionsScreen extends StatelessWidget {
  const NumberOfCompletedTransactionsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NumberOfCompletedTransactionsBloc>(
      create: (context) =>
          NumberOfCompletedTransactionsBloc(NumberOfCompletedTransactionsState(
        numberOfCompletedTransactionsModelObj:
            NumberOfCompletedTransactionsModel(),
      ))
            ..add(NumberOfCompletedTransactionsInitialEvent()),
      child: NumberOfCompletedTransactionsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          width: double.maxFinite,
          child: SizedBox(
            height: mediaQueryData.size.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 220.v,
                    width: 214.h,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse116,
                          height: 220.v,
                          width: 214.h,
                          alignment: Alignment.center,
                        ),
                        CustomElevatedButton(
                          height: 17.v,
                          width: 53.h,
                          text: "lbl_select".tr,
                          margin: EdgeInsets.only(
                            top: 85.v,
                            right: 21.h,
                          ),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientIndigoAToDeepPurpleATL2Decoration,
                          buttonTextStyle:
                              CustomTextStyles.interPrimaryContainerSemiBold7,
                          alignment: Alignment.topRight,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      top: 33.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.6,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHiconLinear,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                          ),
                        ),
                        SizedBox(height: 25.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_gallery".tr,
                                style: CustomTextStyles.labelLargeInterMedium,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgLeft2,
                                height: 2.v,
                                width: 6.h,
                                margin: EdgeInsets.only(
                                  left: 5.h,
                                  top: 5.v,
                                  bottom: 7.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 124.h,
                      top: 37.v,
                    ),
                    child: Text(
                      "msg_select_profile_picture".tr,
                      style: CustomTextStyles.titleMediumMedium_2,
                    ),
                  ),
                ),
                _buildThirtySix(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtySix(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 112.v),
        child: BlocSelector<
            NumberOfCompletedTransactionsBloc,
            NumberOfCompletedTransactionsState,
            NumberOfCompletedTransactionsModel?>(
          selector: (state) => state.numberOfCompletedTransactionsModelObj,
          builder: (context, numberOfCompletedTransactionsModelObj) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 189.v,
                crossAxisCount: 3,
                mainAxisSpacing: 1.h,
                crossAxisSpacing: 1.h,
              ),
              physics: BouncingScrollPhysics(),
              itemCount: numberOfCompletedTransactionsModelObj
                      ?.thirtysixItemList.length ??
                  0,
              itemBuilder: (context, index) {
                ThirtysixItemModel model = numberOfCompletedTransactionsModelObj
                        ?.thirtysixItemList[index] ??
                    ThirtysixItemModel();
                return ThirtysixItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
