import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    home: BelajarGetData(),
  ));
}

class BelajarGetData extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Belajar GET HTTP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Uri apiUrl = Uri(scheme:'https',host:"reqres.in",path: "api/users?per_page=15");
  Future<List<dynamic>> _fetchDataUsers() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          child: FutureBuilder<List<dynamic>>(
              future: _fetchDataUsers(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    padding: EdgeInsets.all(10),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              NetworkImage(snapshot.data[index]['avatar']),
                        ),
                        title: Text(snapshot.data[index]['first_name'] +
                            " " +
                            snapshot.data[index]['last_name']),
                        subtitle: Text(snapshot.data[index]['email']),
                      );
                    },
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              })),
    );
  }

}
