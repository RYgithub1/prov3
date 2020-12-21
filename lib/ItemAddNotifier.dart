import 'package:flutter/material.dart';
import 'package:prov3/Item.dart';


// class ItemAddNotifier {
class ItemAddNotifier extends ChangeNotifier {

  List<Item> itemList = [];

  addItem(String itemName) async {  /// [(2)deal with addItem and notifyListeners]
    Item item = Item(itemName);
    itemList.add(item);

    notifyListeners();
  }

}