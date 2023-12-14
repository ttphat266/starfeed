// ignore_for_file: must_be_immutable

part of 'influencer_mailbox_one_bloc.dart';

/// Represents the state of InfluencerMailboxOne in the application.
class InfluencerMailboxOneState extends Equatable {
  InfluencerMailboxOneState({
    this.editTextController,
    this.editTextController1,
    this.editTextController2,
    this.influencerMailboxOneModelObj,
  });

  TextEditingController? editTextController;

  TextEditingController? editTextController1;

  TextEditingController? editTextController2;

  InfluencerMailboxOneModel? influencerMailboxOneModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        editTextController1,
        editTextController2,
        influencerMailboxOneModelObj,
      ];
  InfluencerMailboxOneState copyWith({
    TextEditingController? editTextController,
    TextEditingController? editTextController1,
    TextEditingController? editTextController2,
    InfluencerMailboxOneModel? influencerMailboxOneModelObj,
  }) {
    return InfluencerMailboxOneState(
      editTextController: editTextController ?? this.editTextController,
      editTextController1: editTextController1 ?? this.editTextController1,
      editTextController2: editTextController2 ?? this.editTextController2,
      influencerMailboxOneModelObj:
          influencerMailboxOneModelObj ?? this.influencerMailboxOneModelObj,
    );
  }
}
