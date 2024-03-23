import 'package:flutter/material.dart';
import 'package:your_app/planning_page.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: PlanningPage(), // Use your planning page widget as the home page
);
}
}
