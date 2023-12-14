// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilesection2_item_model.dart';/// This class defines the variables used in the [influencer_mailbox_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InfluencerMailboxOneModel extends Equatable {InfluencerMailboxOneModel({this.userprofilesection2ItemList = const []}) {  }

List<Userprofilesection2ItemModel> userprofilesection2ItemList;

InfluencerMailboxOneModel copyWith({List<Userprofilesection2ItemModel>? userprofilesection2ItemList}) { return InfluencerMailboxOneModel(
userprofilesection2ItemList : userprofilesection2ItemList ?? this.userprofilesection2ItemList,
); } 
@override List<Object?> get props => [userprofilesection2ItemList];
 }
