// ignore_for_file: must_be_immutable

part of 'let_s_start_bloc.dart';

/// Represents the state of LetSStart in the application.
class LetSStartState extends Equatable {
  LetSStartState({this.letSStartModelObj});

  LetSStartModel? letSStartModelObj;

  @override
  List<Object?> get props => [
        letSStartModelObj,
      ];
  LetSStartState copyWith({LetSStartModel? letSStartModelObj}) {
    return LetSStartState(
      letSStartModelObj: letSStartModelObj ?? this.letSStartModelObj,
    );
  }
}
