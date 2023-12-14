import '../../../core/app_export.dart';/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {Userprofile2ItemModel({this.userImage, this.username, this.description, this.storyPost, this.price, this.acceptButton, this.denyButton, this.id, }) { userImage = userImage  ?? ImageConstant.imgHiconOutline5x6;username = username  ?? "Johnathon Doe";description = description  ?? "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...";storyPost = storyPost  ?? "Story Post : 24 hr";price = price  ?? " 200";acceptButton = acceptButton  ?? "Accept";denyButton = denyButton  ?? "Deny";id = id  ?? ""; }

String? userImage;

String? username;

String? description;

String? storyPost;

String? price;

String? acceptButton;

String? denyButton;

String? id;

 }
