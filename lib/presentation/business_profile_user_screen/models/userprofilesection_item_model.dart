import '../../../core/app_export.dart';/// This class is used in the [userprofilesection_item_widget] screen.
class UserprofilesectionItemModel {UserprofilesectionItemModel({this.userImage, this.userName, this.postType, this.postPrice, this.postDate, this.id, }) { userImage = userImage  ?? ImageConstant.imgEllipse81154x54;userName = userName  ?? "Johnathon Doe";postType = postType  ?? "1 Image, Story Post : 24 hr";postPrice = postPrice  ?? " 200";postDate = postDate  ?? "20 jun 2023";id = id  ?? ""; }

String? userImage;

String? userName;

String? postType;

String? postPrice;

String? postDate;

String? id;

 }
