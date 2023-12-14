// ignore_for_file: must_be_immutable

part of 'add_social_media_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddSocialMediaOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddSocialMediaOneEvent extends Equatable {}

/// Event that is dispatched when the AddSocialMediaOne widget is first created.
class AddSocialMediaOneInitialEvent extends AddSocialMediaOneEvent {
  @override
  List<Object?> get props => [];
}
