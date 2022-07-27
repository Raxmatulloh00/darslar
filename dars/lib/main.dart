import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter Darsimiz",
            style: TextStyle(
              fontSize: 26.0,
              color: Colors.black54,
            ),
          ),
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Button bosildi");
          },
          backgroundColor: Colors.black45,
          child: const Icon(
            Icons.apps,
            color: Colors.white,
            size: 35.0,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Column(
          children: <Widget>[
            const Text(
              "Rasmli Saxifa",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(4.0),
                      color: Colors.black,
                      child: (Column(
                        children: const <Widget>[
                          Expanded(
                            child: Placeholder(
                              color: Colors.red,
                              strokeWidth: 3,
                            ),
                          ),
                          Text(
                            "Raxmatulloh",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4.0),
                      color: Colors.yellow.shade100,
                      child: (Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          FadeInImage.assetNetwork(
                              placeholder: "assets/images/loading.gif",
                              image:
                                  "https://theswissholidays.co.in/europe-tours/switzerland-tour-packages/images/swiss-paris-banner.jpg",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover),
                          const Text("Raxmatulloh"),
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(4.0),
                      color: Colors.red,
                      child: (Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          CircleAvatar(
                            radius: 50.0,
                            backgroundImage: NetworkImage(
                                "https://theswissholidays.co.in/europe-tours/switzerland-tour-packages/images/swiss-paris-banner.jpg"),
                            backgroundColor: Colors.greenAccent,
                            foregroundColor: Colors.yellowAccent,
                          ),
                          Text("Raxmatulloh"),
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(4.0),
                      color: Colors.yellow,
                      child: (Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/rasm.jpg",
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text("Raxmatulloh"),
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(4.0),
                      color: Colors.yellow.shade100,
                      child: (Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          FlutterLogo(
                            size: 80.0,
                          ),
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(4.0),
                      color: Colors.yellow.shade100,
                      child: (Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          FlutterLogo(
                            size: 80.0,
                            style: FlutterLogoStyle.horizontal,
                            textColor: Colors.black,
                          ),
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
