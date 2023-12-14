// ignore_for_file: must_be_immutable

part of 'add_social_media_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddSocialMediaTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddSocialMediaTwoEvent extends Equatable {}

/// Event that is dispatched when the AddSocialMediaTwo widget is first created.
class AddSocialMediaTwoInitialEvent extends AddSocialMediaTwoEvent {
  @override
  List<Object?> get props => [];
}
