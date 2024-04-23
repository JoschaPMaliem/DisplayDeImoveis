import 'package:flutter/material.dart';
import 'package:teste_extended/model/imovel.dart';
import 'package:teste_extended/model/list_imovel.dart';
import 'package:teste_extended/view/imovel_view.dart';
import 'package:teste_extended/view/myListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Imoveis";
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),

        body: Column(
          children: [
            SizedBox(
              height: 500,
              child: MyListView(),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
