import 'package:flutter/material.dart';
import 'package:belajar_flutter/nav_routing/routes.dart';

void main() {
  runApp(const MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
