import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.userImage, this.userName, this.userDescription, this.storyPost, this.storyPrice, this.pendingStatus, this.id, }) { userImage = userImage  ?? ImageConstant.imgHiconOutline5x6;userName = userName  ?? "Johnathon Doe";userDescription = userDescription  ?? "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...";storyPost = storyPost  ?? "Story Post : 24 hr";storyPrice = storyPrice  ?? " 200";pendingStatus = pendingStatus  ?? "Pending";id = id  ?? ""; }

String? userImage;

String? userName;

String? userDescription;

String? storyPost;

String? storyPrice;

String? pendingStatus;

String? id;

 }
