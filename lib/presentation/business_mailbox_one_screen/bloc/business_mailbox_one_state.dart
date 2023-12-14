// ignore_for_file: must_be_immutable

part of 'business_mailbox_one_bloc.dart';

/// Represents the state of BusinessMailboxOne in the application.
class BusinessMailboxOneState extends Equatable {
  BusinessMailboxOneState({
    this.editTextController,
    this.editTextController1,
    this.editTextController2,
    this.businessMailboxOneModelObj,
  });

  TextEditingController? editTextController;

  TextEditingController? editTextController1;

  TextEditingController? editTextController2;

  BusinessMailboxOneModel? businessMailboxOneModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        editTextController1,
        editTextController2,
        businessMailboxOneModelObj,
      ];
  BusinessMailboxOneState copyWith({
    TextEditingController? editTextController,
    TextEditingController? editTextController1,
    TextEditingController? editTextController2,
    BusinessMailboxOneModel? businessMailboxOneModelObj,
  }) {
    return BusinessMailboxOneState(
      editTextController: editTextController ?? this.editTextController,
      editTextController1: editTextController1 ?? this.editTextController1,
      editTextController2: editTextController2 ?? this.editTextController2,
      businessMailboxOneModelObj:
          businessMailboxOneModelObj ?? this.businessMailboxOneModelObj,
    );
  }
}
