// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'thirtysix_item_model.dart';/// This class defines the variables used in the [number_of_completed_transactions_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NumberOfCompletedTransactionsModel extends Equatable {NumberOfCompletedTransactionsModel({this.thirtysixItemList = const []}) {  }

List<ThirtysixItemModel> thirtysixItemList;

NumberOfCompletedTransactionsModel copyWith({List<ThirtysixItemModel>? thirtysixItemList}) { return NumberOfCompletedTransactionsModel(
thirtysixItemList : thirtysixItemList ?? this.thirtysixItemList,
); } 
@override List<Object?> get props => [thirtysixItemList];
 }
