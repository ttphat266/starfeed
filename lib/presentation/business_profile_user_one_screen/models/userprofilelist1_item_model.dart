import '../../../core/app_export.dart';/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {Userprofilelist1ItemModel({this.userImage, this.johnathonDoe, this.imageStoryPost, this.price, this.jun, this.id, }) { userImage = userImage  ?? ImageConstant.imgEllipse81154x54;johnathonDoe = johnathonDoe  ?? "Johnathon Doe";imageStoryPost = imageStoryPost  ?? "1 Image, Story Post : 24 hr";price = price  ?? " 200";jun = jun  ?? "20 jun 2023";id = id  ?? ""; }

String? userImage;

String? johnathonDoe;

String? imageStoryPost;

String? price;

String? jun;

String? id;

 }
