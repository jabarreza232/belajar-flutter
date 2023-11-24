// ignore_for_file: unnecessary_const
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'dart:core';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Belajar ListView'),
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
  final List bulan = [
    "Januari",
    "Fabruari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  final List tahun = [
    "2019",
    "2020",
    "2021",
    "2022",
    "2023",
    "2024",
    "2025",
    "2026",
    "2027",
    "2028",
    "2029",
    "2030"
  ];
  static const platform = MethodChannel('com.example.belajar_flutter/battery');

  // Get battery level.
  String _batteryLevel = 'Unknown battery level.';

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_batteryLevel),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                bulan[index],
                style: const TextStyle(fontSize: 30),
              ),
              subtitle: Text(tahun[index]),
              leading: CircleAvatar(
                  child: Text(
                bulan[index][0],
                style: const TextStyle(fontSize: 20),
              )),
            ),
          );
        },
        separatorBuilder: (context, position) {
          if (position % 5 == 0) {
            return Container(
              height: 60,
              color: Colors.greenAccent,
              child: const Center(
                  child: const Text('Space Iklan-iklanan',
                      style: const TextStyle(fontSize: 20))),
            );
          } else {
            return const Divider();
          }
        },
        itemCount: bulan.length,
      ),
    
      floatingActionButton: FloatingActionButton(
        onPressed: _getBatteryLevel,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        
      ),
    
    );
  }
}
