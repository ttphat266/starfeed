import '../../../core/app_export.dart';/// This class is used in the [userprofilesection2_item_widget] screen.
class Userprofilesection2ItemModel {Userprofilesection2ItemModel({this.userImage, this.userName, this.userDescription, this.storyPost, this.userAmount, this.acceptButton, this.denyButton, this.id, }) { userImage = userImage  ?? ImageConstant.imgHiconOutline5x6;userName = userName  ?? "Johnathon Doe";userDescription = userDescription  ?? "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...";storyPost = storyPost  ?? "Story Post : 24 hr";userAmount = userAmount  ?? " 200";acceptButton = acceptButton  ?? "Accept";denyButton = denyButton  ?? "Deny";id = id  ?? ""; }

String? userImage;

String? userName;

String? userDescription;

String? storyPost;

String? userAmount;

String? acceptButton;

String? denyButton;

String? id;

 }
