// ignore_for_file: must_be_immutable

part of 'explore_business_bloc.dart';

/// Represents the state of ExploreBusiness in the application.
class ExploreBusinessState extends Equatable {
  ExploreBusinessState({
    this.searchTwoController,
    this.editTextController,
    this.isSelectedSwitch = false,
    this.exploreBusinessModelObj,
  });

  TextEditingController? searchTwoController;

  TextEditingController? editTextController;

  ExploreBusinessModel? exploreBusinessModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        searchTwoController,
        editTextController,
        isSelectedSwitch,
        exploreBusinessModelObj,
      ];
  ExploreBusinessState copyWith({
    TextEditingController? searchTwoController,
    TextEditingController? editTextController,
    bool? isSelectedSwitch,
    ExploreBusinessModel? exploreBusinessModelObj,
  }) {
    return ExploreBusinessState(
      searchTwoController: searchTwoController ?? this.searchTwoController,
      editTextController: editTextController ?? this.editTextController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      exploreBusinessModelObj:
          exploreBusinessModelObj ?? this.exploreBusinessModelObj,
    );
  }
}
