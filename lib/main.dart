import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'column_widget.dart';
import 'hello_world.dart';
import 'row_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplikasi Flutter Pertama",
      home: HomeFeatures(),
    );
  }
}

class HomeFeatures extends StatefulWidget {
  const HomeFeatures({super.key});

  @override
  State<HomeFeatures> createState() => _HomeFeaturesState();
}

class _HomeFeaturesState extends State<HomeFeatures> {
  int _listPageCurrentIndex = 0;
  final List<Widget> _container = [
    const HelloWorld(),
    const ColumnWidget(),
    const RowWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Flutter"),
        ),
        body: Center(
          child: _container[_listPageCurrentIndex],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          animationDuration: const Duration(milliseconds: 300),
          backgroundColor: Colors.transparent,
          items: const <Widget>[
            Icon(Icons.home_filled, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.arrow_forward_rounded, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _listPageCurrentIndex = index;
            });
          },
        ));
  }
}
