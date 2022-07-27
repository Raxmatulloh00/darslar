import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  Page1({Key? key}) : super(key: key);
  List<int> listRaqamlar = List.generate(15, (index) => index);
  List<String> listBoshliq =
      List.generate(15, (index) => "List element $index");
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listRaqamlar
          .map(
            (oshaVaqtdagiElement) => Column(
              children: [
                Card(
                  margin: const EdgeInsets.all(20),
                  elevation: 10,
                  color: Colors.yellow,
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.face),
                      radius: 12,
                    ),
                    title: Text(
                        "Salom Men Cardning ${oshaVaqtdagiElement + 1} - elementiman"),
                    subtitle: Text(
                      listBoshliq[oshaVaqtdagiElement],
                    ),
                    trailing: const Icon(Icons.add_circle_outline),
                  ),
                ),
                const Divider(
                    color: Colors.black, height: 10, indent: 0, thickness: 2),
              ],
            ),
          )
          .toList(),
    );
  }
}
