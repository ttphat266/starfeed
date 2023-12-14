// ignore_for_file: must_be_immutable

part of 'delivery_bloc.dart';

/// Represents the state of Delivery in the application.
class DeliveryState extends Equatable {
  DeliveryState({this.deliveryModelObj});

  DeliveryModel? deliveryModelObj;

  @override
  List<Object?> get props => [
        deliveryModelObj,
      ];
  DeliveryState copyWith({DeliveryModel? deliveryModelObj}) {
    return DeliveryState(
      deliveryModelObj: deliveryModelObj ?? this.deliveryModelObj,
    );
  }
}
