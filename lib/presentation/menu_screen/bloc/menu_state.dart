// ignore_for_file: must_be_immutable

part of 'menu_bloc.dart';

/// Represents the state of Menu in the application.
class MenuState extends Equatable {
  MenuState({
    this.searchController,
    this.menuModelObj,
  });

  TextEditingController? searchController;

  MenuModel? menuModelObj;

  @override
  List<Object?> get props => [
        searchController,
        menuModelObj,
      ];
  MenuState copyWith({
    TextEditingController? searchController,
    MenuModel? menuModelObj,
  }) {
    return MenuState(
      searchController: searchController ?? this.searchController,
      menuModelObj: menuModelObj ?? this.menuModelObj,
    );
  }
}
