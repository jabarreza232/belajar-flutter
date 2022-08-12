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
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2020/10/04/18/13/mountains-5627143_1280.jpg'),
            fit: BoxFit.fitHeight,
          )),
        ),
        Positioned(
          child: Text(date.hour.toString() + ':' + date.minute.toString(),
              style: TextStyle(color: Colors.white, fontSize: 45.0)),
          top: 100.0,
          right: 40.0,
        ),
        Positioned(
            right: 40.0,
            top: 150.0,
            child: Text(
              "BelajarFlutter.com",
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            )),
        Positioned(
          bottom: 48.0,
          left: 10.0,
          right: 10.0,
          child: Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Kata Mutiara",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 16.0,
                    right: 16.0,
                    bottom: 8.0,
                  ),
                  child: Text(
                      "Pendidikan adalah senjata paling ampuh yang bisa kamu gunakan untuk mengubah dunia."),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 16.0, right: 16.0, bottom: 32.0),
                child: Text("Nelson Mandela"),
                )
              ],
            ),
          ),
        ),
      ],
    )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
