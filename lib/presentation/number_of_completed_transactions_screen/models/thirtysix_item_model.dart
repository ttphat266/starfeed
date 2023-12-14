import '../../../core/app_export.dart';/// This class is used in the [thirtysix_item_widget] screen.
class ThirtysixItemModel {ThirtysixItemModel({this.cameraImage, this.camera, this.id, }) { cameraImage = cameraImage  ?? ImageConstant.imgInstagram;camera = camera  ?? "Camera";id = id  ?? ""; }

String? cameraImage;

String? camera;

String? id;

 }
