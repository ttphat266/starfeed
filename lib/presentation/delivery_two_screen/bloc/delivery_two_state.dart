// ignore_for_file: must_be_immutable

part of 'delivery_two_bloc.dart';

/// Represents the state of DeliveryTwo in the application.
class DeliveryTwoState extends Equatable {
  DeliveryTwoState({this.deliveryTwoModelObj});

  DeliveryTwoModel? deliveryTwoModelObj;

  @override
  List<Object?> get props => [
        deliveryTwoModelObj,
      ];
  DeliveryTwoState copyWith({DeliveryTwoModel? deliveryTwoModelObj}) {
    return DeliveryTwoState(
      deliveryTwoModelObj: deliveryTwoModelObj ?? this.deliveryTwoModelObj,
    );
  }
}
