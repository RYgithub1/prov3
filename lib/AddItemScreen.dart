import 'package:flutter/material.dart';
import 'package:prov3/ItemAddNotifier.dart';
import 'package:provider/provider.dart';



class AddItemScreen extends StatelessWidget {

  AddItemScreen() : super();

  final String title = "ADD ITEM";

  final TextEditingController _itemNameController = TextEditingController();

  /// [=== build() ===]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
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
          ],
        ),
      ),
    );
  }
}