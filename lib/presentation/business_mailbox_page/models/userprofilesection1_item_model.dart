import '../../../core/app_export.dart';/// This class is used in the [userprofilesection1_item_widget] screen.
class Userprofilesection1ItemModel {Userprofilesection1ItemModel({this.userImage, this.userName, this.userDescription, this.storyPost, this.storyPrice, this.status, this.id, }) { userImage = userImage  ?? ImageConstant.imgHiconOutline5x6;userName = userName  ?? "Johnathon Doe";userDescription = userDescription  ?? "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...";storyPost = storyPost  ?? "Story Post : 24 hr";storyPrice = storyPrice  ?? " 200";status = status  ?? "Pending";id = id  ?? ""; }

String? userImage;

String? userName;

String? userDescription;

String? storyPost;

String? storyPrice;

String? status;

String? id;

 }
