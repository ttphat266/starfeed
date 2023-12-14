// ignore_for_file: must_be_immutable

part of 'let_s_start_one_bloc.dart';

/// Represents the state of LetSStartOne in the application.
class LetSStartOneState extends Equatable {
  LetSStartOneState({this.letSStartOneModelObj});

  LetSStartOneModel? letSStartOneModelObj;

  @override
  List<Object?> get props => [
        letSStartOneModelObj,
      ];
  LetSStartOneState copyWith({LetSStartOneModel? letSStartOneModelObj}) {
    return LetSStartOneState(
      letSStartOneModelObj: letSStartOneModelObj ?? this.letSStartOneModelObj,
    );
  }
}
