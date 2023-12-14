// ignore_for_file: must_be_immutable

part of 'add_social_media_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddSocialMedia widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddSocialMediaEvent extends Equatable {}

/// Event that is dispatched when the AddSocialMedia widget is first created.
class AddSocialMediaInitialEvent extends AddSocialMediaEvent {
  @override
  List<Object?> get props => [];
}
