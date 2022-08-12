import 'package:belajar_flutter/navDrawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BelajarNavigationDrawer(),
    );
  }
}

class BelajarNavigationDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        title: Text("Belajar Navigation Drawer"),
      ),
      drawer: DrawerWidget(),
      endDrawer: DrawerWidget(),
      body: Center(
          child: Text(
        "Belajar navigation drawer di flutter",
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
