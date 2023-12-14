// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilelist1_item_model.dart';/// This class defines the variables used in the [business_profile_user_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BusinessProfileUserOneModel extends Equatable {BusinessProfileUserOneModel({this.userprofilelist1ItemList = const []}) {  }

List<Userprofilelist1ItemModel> userprofilelist1ItemList;

BusinessProfileUserOneModel copyWith({List<Userprofilelist1ItemModel>? userprofilelist1ItemList}) { return BusinessProfileUserOneModel(
userprofilelist1ItemList : userprofilelist1ItemList ?? this.userprofilelist1ItemList,
); } 
@override List<Object?> get props => [userprofilelist1ItemList];
 }
