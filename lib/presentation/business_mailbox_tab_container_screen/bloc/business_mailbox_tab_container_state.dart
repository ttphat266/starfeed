// ignore_for_file: must_be_immutable

part of 'business_mailbox_tab_container_bloc.dart';

/// Represents the state of BusinessMailboxTabContainer in the application.
class BusinessMailboxTabContainerState extends Equatable {
  BusinessMailboxTabContainerState({this.businessMailboxTabContainerModelObj});

  BusinessMailboxTabContainerModel? businessMailboxTabContainerModelObj;

  @override
  List<Object?> get props => [
        businessMailboxTabContainerModelObj,
      ];
  BusinessMailboxTabContainerState copyWith(
      {BusinessMailboxTabContainerModel? businessMailboxTabContainerModelObj}) {
    return BusinessMailboxTabContainerState(
      businessMailboxTabContainerModelObj:
          businessMailboxTabContainerModelObj ??
              this.businessMailboxTabContainerModelObj,
    );
  }
}
