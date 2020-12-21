import 'package:flutter/material.dart';
import 'package:prov3/AddItemScreen.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen() : super();
  final String title = "HOME";

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

            

          ],
        ),
      ),
    );
  }
}