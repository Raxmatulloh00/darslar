import 'package:flutter/material.dart';
import 'dart:math' as matematika;

class CollapsableToolBarOrnigi extends StatelessWidget {
  const CollapsableToolBarOrnigi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.yellowAccent,
          expandedHeight: 200,
          floating: true,
          snap: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: const Text(
              "Sliver AppBari",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            background: Image.network(
              "https://source.unsplash.com/random/154865165",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              _dinamikElementChaqiradiganFunction,
              childCount: 10,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              _dinamikElementChaqiradiganFunction,
              childCount: 10,
            ),
          ),
        ),
        SliverFixedExtentList(
          delegate: SliverChildListDelegate(methodListElementlari),
          itemExtent: 150,
        ),
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(
              _dinamikElementChaqiradiganFunction,
              childCount: 20),
          itemExtent: 80,
        ),
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          delegate: SliverChildListDelegate(methodListElementlari),
        ),
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          delegate: SliverChildBuilderDelegate(
              _dinamikElementChaqiradiganFunction,
              childCount: 18),
        ),
      ],
    );
  }

  List<Widget> get methodListElementlari {
    return [
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.black54,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Color.fromARGB(137, 201, 19, 19),
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Color.fromARGB(137, 74, 101, 45),
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Color.fromARGB(137, 175, 233, 93),
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.indigo,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.deepOrange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.cyanAccent,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.black54,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Color.fromARGB(137, 201, 19, 19),
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Color.fromARGB(137, 74, 101, 45),
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Color.fromARGB(137, 175, 233, 93),
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.indigo,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.deepOrange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.cyanAccent,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget _dinamikElementChaqiradiganFunction(context, index) {
    return Container(
      height: 100,
      child: Text(
        "Hello Flutter ${index + 1}",
        style: const TextStyle(fontSize: 20),
      ),
      color: duchKelganBirorRang(),
      alignment: Alignment.center,
    );
  }

  Color duchKelganBirorRang() {
    return Color.fromARGB(
      matematika.Random().nextInt(255),
      matematika.Random().nextInt(255),
      matematika.Random().nextInt(255),
      matematika.Random().nextInt(255),
    );
  }
}
