// ignore_for_file: must_be_immutable

part of 'explore_business_two_bloc.dart';

/// Represents the state of ExploreBusinessTwo in the application.
class ExploreBusinessTwoState extends Equatable {
  ExploreBusinessTwoState({
    this.searchTwoController,
    this.exploreBusinessTwoModelObj,
  });

  TextEditingController? searchTwoController;

  ExploreBusinessTwoModel? exploreBusinessTwoModelObj;

  @override
  List<Object?> get props => [
        searchTwoController,
        exploreBusinessTwoModelObj,
      ];
  ExploreBusinessTwoState copyWith({
    TextEditingController? searchTwoController,
    ExploreBusinessTwoModel? exploreBusinessTwoModelObj,
  }) {
    return ExploreBusinessTwoState(
      searchTwoController: searchTwoController ?? this.searchTwoController,
      exploreBusinessTwoModelObj:
          exploreBusinessTwoModelObj ?? this.exploreBusinessTwoModelObj,
    );
  }
}
