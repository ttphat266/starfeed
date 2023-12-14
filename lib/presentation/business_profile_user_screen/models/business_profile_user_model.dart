// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilesection_item_model.dart';/// This class defines the variables used in the [business_profile_user_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BusinessProfileUserModel extends Equatable {BusinessProfileUserModel({this.userprofilesectionItemList = const []}) {  }

List<UserprofilesectionItemModel> userprofilesectionItemList;

BusinessProfileUserModel copyWith({List<UserprofilesectionItemModel>? userprofilesectionItemList}) { return BusinessProfileUserModel(
userprofilesectionItemList : userprofilesectionItemList ?? this.userprofilesectionItemList,
); } 
@override List<Object?> get props => [userprofilesectionItemList];
 }
