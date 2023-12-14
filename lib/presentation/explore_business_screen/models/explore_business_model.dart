// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'explorebusiness_item_model.dart';/// This class defines the variables used in the [explore_business_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreBusinessModel extends Equatable {ExploreBusinessModel({this.explorebusinessItemList = const []}) {  }

List<ExplorebusinessItemModel> explorebusinessItemList;

ExploreBusinessModel copyWith({List<ExplorebusinessItemModel>? explorebusinessItemList}) { return ExploreBusinessModel(
explorebusinessItemList : explorebusinessItemList ?? this.explorebusinessItemList,
); } 
@override List<Object?> get props => [explorebusinessItemList];
 }
