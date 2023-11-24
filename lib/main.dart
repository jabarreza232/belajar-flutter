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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.center,
            width: 200,
            height: 280,
            padding: const EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 44, 69, 104),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/91/86/6b/91866b918c9cca0747f483a46943e926.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.black,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'DancingScript',
                      color: Colors.black),
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),

          Container(
            alignment: Alignment.center,
            width: 200,
            height: 280,
            padding: const EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 44, 69, 104),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/91/86/6b/91866b918c9cca0747f483a46943e926.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.black,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'DancingScript',
                      color: Colors.black),
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
      
        ],
      ),
    
      floatingActionButton: FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  
//  void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

    void _decrementCounter() {
      setState(() {
        _counter--;
      });
  }
}
