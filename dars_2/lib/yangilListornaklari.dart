import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class YangiList extends StatelessWidget {
  List<Oquvchi> hammaoquvchilar = [];

  @override
  Widget build(BuildContext context) {
    oquvchimalumoti();
    return ListView.separated(
      separatorBuilder: (context, index) {
        if (index % 5 == 0 && index != 0) {
          return const Divider(
            thickness: 4,
            color: Colors.orange,
          );
        } else {
          return Divider();
        }
      },
      itemCount: 50,
      itemBuilder: (context, index) {
        return Card(
          color: index % 2 == 0 ? Colors.yellow : Colors.redAccent,
          elevation: 4,
          child: ListTile(
            leading: const Icon(Icons.child_care),
            title: Text(hammaoquvchilar[index].ism!),
            subtitle: Text(hammaoquvchilar[index].izoh!),
            trailing: Icon(Icons.add_circle),
            onLongPress: () {
              debugPrint("OnLongtap bosildi");
              alertDialogKorsat(context);
              toast(index, true);
            },
            onTap: () {
              debugPrint("ontop bosildi");
              toast(index, false);
              alertDialogKorsat(context);
            },
          ),
        );
      },
    );
    // Ramni ishlatoshga majbur qiladi
    // ListView.builder(
    //   itemCount: 20,
    //   itemBuilder: (context, index) {
    //     return Card(
    //       color: index % 2 == 0 ? Colors.yellow : Colors.redAccent,
    //       elevation: 4,
    //       child: ListTile(
    //         leading: const Icon(Icons.child_care),
    //         title: Text(hammaoquvchilar[index].ism!),
    //         subtitle: Text(hammaoquvchilar[index].izoh!),
    //         trailing: Icon(Icons.add_circle),
    //       ),
    //     );
    //   },
    // );
  }

  void oquvchimalumoti() {
    hammaoquvchilar = List.generate(
        50,
        (index) => Oquvchi("Sattor $index Ism", "Oquvchi $index Izoh",
            index % 2 == 0 ? true : false));
  }

  void alertDialogKorsat(BuildContext ctx) {
    showDialog(
        context: ctx,
        barrierDismissible: true,
        builder: (ctx) {
          return AlertDialog(
            title: const Text("Alert Dialog qismi"),
            content: SingleChildScrollView(
              child: ListBody(
                children: const [
                  Text("Alertdagi ich qism\nIkkinchi satr\nUchinchi satr"),
                  Text("Alertdagi ich qism\nIkkinchi satr\nUchinchi satr"),
                  Text("Alertdagi ich qism\nIkkinchi satr\nUchinchi satr")
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Text("HA"),
                style: TextButton.styleFrom(backgroundColor: Colors.green),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Text("Yoq"),
                style: TextButton.styleFrom(backgroundColor: Colors.red),
              ),
            ],
          );
        });
  }

  void toast(int index, bool uzunBosilish) {
    Fluttertoast.showToast(
      msg: uzunBosilish
          ? "Uzun Bosildi " + hammaoquvchilar[index].toString()
          : "Bitta Bosildi " + hammaoquvchilar[index].toString(),
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}

class Oquvchi {
  String? ism;
  String? izoh;
  bool? jinsi;

  Oquvchi(this.ism, this.izoh, this.jinsi);

  @override
  String toString() {
    return "Talangan $ism $izoh";
  }
}
