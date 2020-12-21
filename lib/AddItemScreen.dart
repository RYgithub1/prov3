import 'package:flutter/material.dart';


class AddItemScreen extends StatelessWidget {

  AddItemScreen() : super();

  final String title = "ADD ITEM";

  final TextEditingController _itemNamecontroller = TextEditingController();


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
              controller: _itemNamecontroller,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                hintText: "ITEM NAME",
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text("ADD"),
              onPressed: (){
                if(_itemNamecontroller.text.isEmpty){
                  return;
                }
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}