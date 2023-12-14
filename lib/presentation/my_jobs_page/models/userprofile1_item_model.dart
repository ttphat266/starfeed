import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.iconButton, this.username, this.description, this.story, this.amount, this.id, }) { iconButton = iconButton  ?? ImageConstant.imgLayer4;username = username  ?? "Johnathon Doe";description = description  ?? "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...";story = story  ?? "15s Video Story Post : 24 hr ";amount = amount  ?? " 200";id = id  ?? ""; }

String? iconButton;

String? username;

String? description;

String? story;

String? amount;

String? id;

 }
