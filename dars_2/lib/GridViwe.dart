import 'package:flutter/material.dart';

class GridViweList extends StatelessWidget {
  const GridViweList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // scrollDirection: Axis.horizontal, //yollamachasi scrol
      // reverse: true, messeglada kerak boladi
      // crossAxisCount: 3,
      // primary: false,
      // padding: EdgeInsets.all(10),
      // crossAxisSpacing: 20,
      // mainAxisSpacing: 40,
      itemCount: 100,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Container(
            margin: const EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //  border: const Border(
              //    top: BorderSide(
              //     color: Colors.green,
              //     width: 10,
              //    ),
              // ),
              border: Border.all(
                color: Colors.lightBlueAccent,
                width: 5,
                style: BorderStyle.solid,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(10, 10),
                  blurRadius: 10,
                ),
              ],
              // borderRadius: const BorderRadius.all(
              //   Radius.circular(20),
              // ),
              //  shape: BoxShape.rectangle,burchaklarni circil qiladi
              shape: BoxShape.circle,
              color: Colors.yellow[100 * ((index + 1) % 8)],
              gradient: const LinearGradient(
                colors: [Colors.yellowAccent, Colors.red],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              image: DecorationImage(
                image:
                    NetworkImage("https://source.unsplash.com/random/$index"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Text(
              "Hello Flutter $index",
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          onTap: () => print("Salom Flutter $index bosildi"),
          onDoubleTap: () => print("Salom Flutter double $index bosildi"),
          onLongPress: () => print("Salom Flutter uzun $index bosildi"),
          onHorizontalDragStart: (e) =>
              print("Salom Flutter cordinate $e bosildi"),
        );
        //   Container(
        //   margin: const EdgeInsets.all(20),
        //   alignment: Alignment.center,
        //   decoration: BoxDecoration(
        //      border: const Border(
        //        top: BorderSide(
        //         color: Colors.green,
        //         width: 10,
        //        ),
        //     ),
        //     border: Border.all(
        //       color: Colors.lightBlueAccent,
        //       width: 5,
        //       style: BorderStyle.solid,
        //     ),
        //     boxShadow: const [
        //       BoxShadow(
        //         color: Colors.blue,
        //         offset: Offset(10, 10),
        //         blurRadius: 10,
        //       ),
        //     ],
        //      borderRadius: const BorderRadius.all(
        //        Radius.circular(20),
        //     ),
        //      shape: BoxShape.rectangle,burchaklarni circil qiladi
        //     shape: BoxShape.circle,
        //     color: Colors.yellow[100 * ((index + 1) % 8)],
        //     gradient: const LinearGradient(
        //       colors: [Colors.yellowAccent, Colors.red],
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //     ),
        //     image: DecorationImage(
        //       image: NetworkImage("https://source.unsplash.com/random/$index"),
        //       fit: BoxFit.contain,
        //       alignment: Alignment.topCenter,
        //     ),
        //   ),
        //   child: Text(
        //     "Hello Flutter $index",
        //     textAlign: TextAlign.center,
        //     style: const TextStyle(color: Colors.black, fontSize: 25),
        //   ),
        // );
      },
    );
  }
}
