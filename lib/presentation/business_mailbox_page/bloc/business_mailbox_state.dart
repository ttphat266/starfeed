// ignore_for_file: must_be_immutable

part of 'business_mailbox_bloc.dart';

/// Represents the state of BusinessMailbox in the application.
class BusinessMailboxState extends Equatable {
  BusinessMailboxState({
    this.editTextController,
    this.editTextController1,
    this.editTextController2,
    this.businessMailboxModelObj,
  });

  TextEditingController? editTextController;

  TextEditingController? editTextController1;

  TextEditingController? editTextController2;

  BusinessMailboxModel? businessMailboxModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        editTextController1,
        editTextController2,
        businessMailboxModelObj,
      ];
  BusinessMailboxState copyWith({
    TextEditingController? editTextController,
    TextEditingController? editTextController1,
    TextEditingController? editTextController2,
    BusinessMailboxModel? businessMailboxModelObj,
  }) {
    return BusinessMailboxState(
      editTextController: editTextController ?? this.editTextController,
      editTextController1: editTextController1 ?? this.editTextController1,
      editTextController2: editTextController2 ?? this.editTextController2,
      businessMailboxModelObj:
          businessMailboxModelObj ?? this.businessMailboxModelObj,
    );
  }
}
