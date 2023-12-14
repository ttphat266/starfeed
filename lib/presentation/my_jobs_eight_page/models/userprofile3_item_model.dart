import '../../../core/app_export.dart';/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {Userprofile3ItemModel({this.dynamicButton, this.dynamicName, this.dynamicDescription, this.dynamicPost, this.dynamicPrice, this.dynamicAccept, this.dynamicDeny, this.dynamicText, this.id, }) { dynamicButton = dynamicButton  ?? ImageConstant.imgLayer4;dynamicName = dynamicName  ?? "Johnathon Doe";dynamicDescription = dynamicDescription  ?? "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt...";dynamicPost = dynamicPost  ?? "15s Video Story Post : 24 hr ";dynamicPrice = dynamicPrice  ?? " 200";dynamicAccept = dynamicAccept  ?? "Accept";dynamicDeny = dynamicDeny  ?? "Deny";dynamicText = dynamicText  ?? "View Ad";id = id  ?? ""; }

String? dynamicButton;

String? dynamicName;

String? dynamicDescription;

String? dynamicPost;

String? dynamicPrice;

String? dynamicAccept;

String? dynamicDeny;

String? dynamicText;

String? id;

 }
