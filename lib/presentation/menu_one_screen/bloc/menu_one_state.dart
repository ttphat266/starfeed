// ignore_for_file: must_be_immutable

part of 'menu_one_bloc.dart';

/// Represents the state of MenuOne in the application.
class MenuOneState extends Equatable {
  MenuOneState({
    this.searchController,
    this.menuOneModelObj,
  });

  TextEditingController? searchController;

  MenuOneModel? menuOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        menuOneModelObj,
      ];
  MenuOneState copyWith({
    TextEditingController? searchController,
    MenuOneModel? menuOneModelObj,
  }) {
    return MenuOneState(
      searchController: searchController ?? this.searchController,
      menuOneModelObj: menuOneModelObj ?? this.menuOneModelObj,
    );
  }
}
