import 'package:flutter/material.dart';
import 'package:belajar_flutter/hero_animation/routes.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
