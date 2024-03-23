// main.dart
import 'package:flutter/material.dart';
import 'planningpage.dart';
import 'forecast_screen.dart';
import 'monitoring_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      routes: {
        '/planning': (context) => PlanningPage(),
        '/forecast': (context) => ForecastScreen(),
        '/monitoring': (context) => MonitoringScreen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: Text('Main Screen'),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Navigation Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Planning'),
            onTap: () {
              Navigator.pushNamed(context, '/planning');
            },
          ),
          ListTile(
            leading: Icon(Icons.show_chart),
            title: Text('Forecast'),
            onTap: () {
              Navigator.pushNamed(context, '/forecast');
            },
          ),
          ListTile(
            leading: Icon(Icons.monitor),
            title: Text('Monitoring'),
            onTap: () {
              Navigator.pushNamed(context, '/monitoring');
            },
          ),
        ],
      ),
    );
  }
}
