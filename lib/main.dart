import 'package:flutter/material.dart';
import 'package:flutter_application_1/PageRouter/RouteManager.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    onGenerateRoute: RouteManager.generateRoute,
  ));
}
