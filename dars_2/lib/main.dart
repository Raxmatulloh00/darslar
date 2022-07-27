import 'package:dars_2/gridViwe.dart';
import 'package:dars_2/page1.dart';
import 'package:dars_2/yangilListornaklari.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CollapsableToolBarOrnigi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: Colors.blueGrey, brightness: Brightness.dark),
      title: "MaterialApp",
      home: Scaffold(
        appBar: AppBar(title: Text("List aplication")),
        body: CollapsableToolBarOrnigi(),
      ),
    );
  }
}
