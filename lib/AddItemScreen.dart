import 'package:flutter/material.dart';
import 'package:prov3/ItemAddNotifier.dart';
import 'package:prov3/ShopNameNotifier.dart';
import 'package:provider/provider.dart';



class AddItemScreen extends StatelessWidget {

  AddItemScreen() : super();

  final String title = "ADD ITEM";

  final TextEditingController _itemNameController = TextEditingController();
  final TextEditingController _shopNameController = TextEditingController();

  /// [=== build() ===]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _itemNameController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                hintText: "ITEM NAME",
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text("ADD ITEM"),
              onPressed: () async {
                if(_itemNameController.text.isEmpty){
                  return;
                }
                // ItemAddNotifier itemAddNotifier = ItemAddNotifier();  /// [for MODEL]
                // itemAddNotifier.addItem(_itemNamecontroller.text);
                await Provider.of<ItemAddNotifier>(context, listen: false)
                    .addItem(_itemNameController.text);   /// [(1)accept addItem]
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text(
                "【Descendant】MAKE NEW ITEM ADD SCREEN",
                style: TextStyle(color: Colors.pink),
              ),
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) {
                      return AddItemScreen();
                  },
                ));
              },
            ),

            SizedBox(height: 20),
            TextField(
              controller: _shopNameController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                hintText: "SHOP NAME",
              ),
            ),
            RaisedButton(
              child: Text("UPDATE SHOP NAME"),
              onPressed: () async {
                if(_shopNameController.text.isEmpty){
                  return;
                }
                await Provider.of<ShopNameNotifier>(context, listen: false)
                    .updateShopName(_shopNameController.text);
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
    );
  }
}