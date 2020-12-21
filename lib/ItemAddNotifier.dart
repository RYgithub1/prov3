import 'package:prov3/Item.dart';


class ItemAddNotifier {

  List<Item> itemList = [];

  addItem(String itemName) async {
    Item item = Item(itemName);
    itemList.add(item);
  }

}