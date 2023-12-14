import '../../../core/app_export.dart';/// This class is used in the [clienttestimonials_item_widget] screen.
class ClienttestimonialsItemModel {ClienttestimonialsItemModel({this.userImage, this.hiconLinear, this.userName, this.userImage1, this.rating, this.ordersDone, this.id, }) { userImage = userImage  ?? ImageConstant.imgEllipse815115x115;hiconLinear = hiconLinear  ?? ImageConstant.imgHiconLinearPrimary23x23;userName = userName  ?? "Tommy Rodberg";userImage1 = userImage1  ?? ImageConstant.imgStar125;rating = rating  ?? "5.0";ordersDone = ordersDone  ?? "20 Orders Done";id = id  ?? ""; }

String? userImage;

String? hiconLinear;

String? userName;

String? userImage1;

String? rating;

String? ordersDone;

String? id;

 }
