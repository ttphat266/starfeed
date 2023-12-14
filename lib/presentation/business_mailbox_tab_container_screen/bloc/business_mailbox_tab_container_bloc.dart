import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/business_mailbox_tab_container_screen/models/business_mailbox_tab_container_model.dart';
part 'business_mailbox_tab_container_event.dart';
part 'business_mailbox_tab_container_state.dart';

/// A bloc that manages the state of a BusinessMailboxTabContainer according to the event that is dispatched to it.
class BusinessMailboxTabContainerBloc extends Bloc<
    BusinessMailboxTabContainerEvent, BusinessMailboxTabContainerState> {
  BusinessMailboxTabContainerBloc(BusinessMailboxTabContainerState initialState)
      : super(initialState) {
    on<BusinessMailboxTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BusinessMailboxTabContainerInitialEvent event,
    Emitter<BusinessMailboxTabContainerState> emit,
  ) async {}
}
