import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Belajar Stack Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => BelajarListView();
}

class BelajarListView extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
                colors: [
                  Colors.green,
                  Colors.blue
                ])
              ),

          ),
          actions: [
            IconButton(
                onPressed: null,
                icon: new Icon(Icons.call, color: Colors.white)),
            IconButton(
                onPressed: null,
                icon: new Icon(Icons.search, color: Colors.white)),
          ],
        ),
        body: IndexedStack(
          index: 2,
          children: [
            Container(color: Colors.green),
            Container(
              color: Colors.red,
              height: 400.0,
              width: 300.0,
            ),
            Positioned(
                right: 40.0,
                top: 100.0,
                child: Container(
                  color: Colors.deepPurple,
                  height: 200.0,
                  width: 200.0,
                ))
          ],
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
