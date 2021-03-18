import 'package:flutter/material.dart';
import 'Dashboard.dart' as Dashboard;

void main() {
  runApp(new MaterialApp(
      title: "tab Bar",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new Dashboard.Dashboard()));
}
