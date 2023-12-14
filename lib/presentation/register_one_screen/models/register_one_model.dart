// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [register_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RegisterOneModel extends Equatable {RegisterOneModel({this.radioList = const []}) {  }

List<String> radioList;

RegisterOneModel copyWith({List<String>? radioList}) { return RegisterOneModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
