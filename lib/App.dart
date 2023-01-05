import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          centerTitle: true,
          title: Text("button App"),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    i = 1;
                  });
                },
                child: Text(
                  "G",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                )),
            TextButton(
                onPressed: () {
                  setState(() {
                    i = 2;
                  });
                },
                child: Text(
                  "P",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                )),
            TextButton(
                onPressed: () {
                  setState(() {
                    i = 3;
                  });
                },
                child: Text(
                  "PI",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                )),
            TextButton(
                onPressed: () {
                  setState(() {
                    i = 4;
                  });
                },
                child: Text(
                  "Y",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                )),
          ],
        ),
        body: Center(
          child: IndexedStack(
            index: i,
            alignment: Alignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Green"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("purple"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("pink"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("yellow"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
