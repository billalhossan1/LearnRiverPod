import 'package:river_pod_learn/screen/model/item_model.dart';
import 'package:riverpod/riverpod.dart';

final ItemProvider = StateNotifierProvider<ItemListNotifire,HomeScreenModel>((ref) =>ItemListNotifire());


class ItemListNotifire extends StateNotifier<HomeScreenModel> {
  ItemListNotifire():super(HomeScreenModel(itemList: [],searchList: [],search: ''));


  void addItem(){
    final List<ItemModel> demoItemList = [
      const ItemModel(name: "Apple", isFavourite: true),
      const ItemModel(name: "Banana", isFavourite: false),
      const ItemModel(name: "Orange", isFavourite: true),
      const ItemModel(name: "Mango", isFavourite: false),
      const ItemModel(name: "Grapes", isFavourite: true),
    ];
    state = state.copyWith(itemList: demoItemList.toList(),searchList: demoItemList.toList());
  }
}