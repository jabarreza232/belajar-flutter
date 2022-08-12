import 'package:flutter/material.dart';
import 'package:belajar_flutter/nav_routing/screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //jika ingin mengirim argument
    //final args= settings.argument;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomePage());

      case "/about":
        return MaterialPageRoute(builder: (_) => AboutPage());
        
      case "/profil":
        return MaterialPageRoute(builder: (_) => ProfilePage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Error Page")),
      );
    });
  }
}
