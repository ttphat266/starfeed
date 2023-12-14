// ignore_for_file: must_be_immutable

part of 'delivery_one_bloc.dart';

/// Represents the state of DeliveryOne in the application.
class DeliveryOneState extends Equatable {
  DeliveryOneState({this.deliveryOneModelObj});

  DeliveryOneModel? deliveryOneModelObj;

  @override
  List<Object?> get props => [
        deliveryOneModelObj,
      ];
  DeliveryOneState copyWith({DeliveryOneModel? deliveryOneModelObj}) {
    return DeliveryOneState(
      deliveryOneModelObj: deliveryOneModelObj ?? this.deliveryOneModelObj,
    );
  }
}
