import '../../../core/app_export.dart';/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {UserprofilelistItemModel({this.userImage, this.userName, this.postText, this.postPrice, this.postDate, this.id, }) { userImage = userImage  ?? ImageConstant.imgEllipse813;userName = userName  ?? "Johnathon Doe";postText = postText  ?? "1 Image, Story Post : 24 hr";postPrice = postPrice  ?? " 200";postDate = postDate  ?? "20 jun 2023";id = id  ?? ""; }

String? userImage;

String? userName;

String? postText;

String? postPrice;

String? postDate;

String? id;

 }
