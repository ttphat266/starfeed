// ignore_for_file: must_be_immutable

part of 'explore_business_one_bloc.dart';

/// Represents the state of ExploreBusinessOne in the application.
class ExploreBusinessOneState extends Equatable {
  ExploreBusinessOneState({
    this.searchTwoController,
    this.exploreBusinessOneModelObj,
  });

  TextEditingController? searchTwoController;

  ExploreBusinessOneModel? exploreBusinessOneModelObj;

  @override
  List<Object?> get props => [
        searchTwoController,
        exploreBusinessOneModelObj,
      ];
  ExploreBusinessOneState copyWith({
    TextEditingController? searchTwoController,
    ExploreBusinessOneModel? exploreBusinessOneModelObj,
  }) {
    return ExploreBusinessOneState(
      searchTwoController: searchTwoController ?? this.searchTwoController,
      exploreBusinessOneModelObj:
          exploreBusinessOneModelObj ?? this.exploreBusinessOneModelObj,
    );
  }
}
