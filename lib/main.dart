import 'package:flutter/material.dart';
import 'package:prov3/HomeScreen.dart';
import 'package:prov3/ItemAddNotifier.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(HomeApp());
}


class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
          return ItemAddNotifier();
      },
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),   /// [(3)Get addItem at HomeScreen]
      ),
    );
  }
}


// class HomeApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // home: HomeScreen(),
//       home: ChangeNotifierProvider(   /// [GO provider]
//         // create: (context) => ItemAddNotifier(),
//         create: (BuildContext context) {
//           return ItemAddNotifier();
//         },
//         child: HomeScreen(),
//       ),
//     );
//   }
// }
