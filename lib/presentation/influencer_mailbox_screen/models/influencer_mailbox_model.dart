// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile2_item_model.dart';/// This class defines the variables used in the [influencer_mailbox_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InfluencerMailboxModel extends Equatable {InfluencerMailboxModel({this.userprofile2ItemList = const []}) {  }

List<Userprofile2ItemModel> userprofile2ItemList;

InfluencerMailboxModel copyWith({List<Userprofile2ItemModel>? userprofile2ItemList}) { return InfluencerMailboxModel(
userprofile2ItemList : userprofile2ItemList ?? this.userprofile2ItemList,
); } 
@override List<Object?> get props => [userprofile2ItemList];
 }
