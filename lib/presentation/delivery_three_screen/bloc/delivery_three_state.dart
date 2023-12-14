// ignore_for_file: must_be_immutable

part of 'delivery_three_bloc.dart';

/// Represents the state of DeliveryThree in the application.
class DeliveryThreeState extends Equatable {
  DeliveryThreeState({this.deliveryThreeModelObj});

  DeliveryThreeModel? deliveryThreeModelObj;

  @override
  List<Object?> get props => [
        deliveryThreeModelObj,
      ];
  DeliveryThreeState copyWith({DeliveryThreeModel? deliveryThreeModelObj}) {
    return DeliveryThreeState(
      deliveryThreeModelObj:
          deliveryThreeModelObj ?? this.deliveryThreeModelObj,
    );
  }
}
