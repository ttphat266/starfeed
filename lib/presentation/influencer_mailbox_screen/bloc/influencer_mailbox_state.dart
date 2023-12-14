// ignore_for_file: must_be_immutable

part of 'influencer_mailbox_bloc.dart';

/// Represents the state of InfluencerMailbox in the application.
class InfluencerMailboxState extends Equatable {
  InfluencerMailboxState({
    this.editTextController,
    this.editTextController1,
    this.editTextController2,
    this.influencerMailboxModelObj,
  });

  TextEditingController? editTextController;

  TextEditingController? editTextController1;

  TextEditingController? editTextController2;

  InfluencerMailboxModel? influencerMailboxModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        editTextController1,
        editTextController2,
        influencerMailboxModelObj,
      ];
  InfluencerMailboxState copyWith({
    TextEditingController? editTextController,
    TextEditingController? editTextController1,
    TextEditingController? editTextController2,
    InfluencerMailboxModel? influencerMailboxModelObj,
  }) {
    return InfluencerMailboxState(
      editTextController: editTextController ?? this.editTextController,
      editTextController1: editTextController1 ?? this.editTextController1,
      editTextController2: editTextController2 ?? this.editTextController2,
      influencerMailboxModelObj:
          influencerMailboxModelObj ?? this.influencerMailboxModelObj,
    );
  }
}
