class ItemModel{
  final String name;
  final bool isFavourite;
  const ItemModel({ required this.name, required this.isFavourite,});


  ItemModel copyWith({String? name, bool? isFavourite}) {
    return ItemModel(
      name: name ?? this.name,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }


}


class HomeScreenModel{
  final List<ItemModel>itemList;
  final List<ItemModel>searchList;
  final String search;

  const HomeScreenModel({required this.itemList, required this.searchList, required this.search});

  HomeScreenModel copyWith({List<ItemModel>?itemList,List<ItemModel>?searchList,String?search}){
    return HomeScreenModel(
      itemList: itemList ?? this.itemList,
      searchList: searchList ?? this.searchList,
      search: search ?? this.search,
    );
  }
}