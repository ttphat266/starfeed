// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'clienttestimonials_item_model.dart';/// This class defines the variables used in the [explore_influencer_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreInfluencerModel extends Equatable {ExploreInfluencerModel({this.clienttestimonialsItemList = const []}) {  }

List<ClienttestimonialsItemModel> clienttestimonialsItemList;

ExploreInfluencerModel copyWith({List<ClienttestimonialsItemModel>? clienttestimonialsItemList}) { return ExploreInfluencerModel(
clienttestimonialsItemList : clienttestimonialsItemList ?? this.clienttestimonialsItemList,
); } 
@override List<Object?> get props => [clienttestimonialsItemList];
 }
