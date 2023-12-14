// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilesection1_item_model.dart';/// This class defines the variables used in the [business_mailbox_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BusinessMailboxModel extends Equatable {BusinessMailboxModel({this.userprofilesection1ItemList = const []}) {  }

List<Userprofilesection1ItemModel> userprofilesection1ItemList;

BusinessMailboxModel copyWith({List<Userprofilesection1ItemModel>? userprofilesection1ItemList}) { return BusinessMailboxModel(
userprofilesection1ItemList : userprofilesection1ItemList ?? this.userprofilesection1ItemList,
); } 
@override List<Object?> get props => [userprofilesection1ItemList];
 }
