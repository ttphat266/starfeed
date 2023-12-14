// ignore_for_file: must_be_immutable

part of 'explore_influencer_bloc.dart';

/// Represents the state of ExploreInfluencer in the application.
class ExploreInfluencerState extends Equatable {
  ExploreInfluencerState({
    this.searchTwoController,
    this.exploreInfluencerModelObj,
  });

  TextEditingController? searchTwoController;

  ExploreInfluencerModel? exploreInfluencerModelObj;

  @override
  List<Object?> get props => [
        searchTwoController,
        exploreInfluencerModelObj,
      ];
  ExploreInfluencerState copyWith({
    TextEditingController? searchTwoController,
    ExploreInfluencerModel? exploreInfluencerModelObj,
  }) {
    return ExploreInfluencerState(
      searchTwoController: searchTwoController ?? this.searchTwoController,
      exploreInfluencerModelObj:
          exploreInfluencerModelObj ?? this.exploreInfluencerModelObj,
    );
  }
}
