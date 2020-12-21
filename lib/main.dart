import 'package:flutter/material.dart';
import 'package:prov3/HomeScreen.dart';
import 'package:prov3/ItemAddNotifier.dart';
import 'package:prov3/ShopNameNotifier.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(HomeApp());
}


/// [3.MultiProvider for ShopNameProvider and ItemAddProvider]
class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
            // ChangeNotifierProvider<ItemAddNotifier>(
            //   create: (BuildContext context) => ItemAddNotifier(),
            // ),
            ChangeNotifierProvider<ItemAddNotifier>(
              create: (BuildContext context) {
                return ItemAddNotifier();
              },
            ),
            // ChangeNotifierProvider<ShopNameNotifier>(
            //   create: (BuildContext context) => ShopNameNotifier(),
            // ),
            ChangeNotifierProvider<ShopNameNotifier>(
              create: (BuildContext context) {
                return ShopNameNotifier();
              },
            ),
      ],
      child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeScreen(),   /// [(3)Get addItem at HomeScreen]
      ),
    );
  }
}


/// [2.error: ChangeNotifierProvider place]
// class HomeApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (BuildContext context) {
//           return ItemAddNotifier();
//       },
//       child: MaterialApp(
//           debugShowCheckedModeBanner: false,
//           home: HomeScreen(),   /// [(3)Get addItem at HomeScreen]
//       ),
//     );
//   }
// }


/// [1.error: ChangeNotifierProvider place]
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
