import 'package:flutter/material.dart';
import 'package:prov3/AddItemScreen.dart';
import 'package:prov3/ItemAddNotifier.dart';
import 'package:prov3/ShopNameNotifier.dart';
import 'package:provider/provider.dart';



class HomeScreen extends StatelessWidget {

  HomeScreen() : super();

  final String title = "HOME";

  /// [=== build() ===]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) {
                    return AddItemScreen();
                },
              ));
            },
          ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[

            Expanded(
              child: Consumer<ItemAddNotifier>(    /// [(4)Use addItem with Consumer<T>()]
                builder: (context, itemAddNotifier, _) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: itemAddNotifier.itemList.length,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            itemAddNotifier.itemList[index].itemName,
                            style: TextStyle(fontSize:20, color: Colors.blue),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),

            Consumer<ShopNameNotifier>(
              // second argument is T value.
              builder: (BuildContext context, shopNameNotifier, _){
                return Text("SHOP NAME: ${shopNameNotifier.shopName}");
              },
            )

          ],
        ),
      ),
    );
  }
}