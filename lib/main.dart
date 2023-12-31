import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'src/ui/product_form.dart';
import 'src/widgets/column_widget.dart';
import 'src/widgets/hello_world.dart';
import 'src/widgets/row_widget.dart';

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
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  // final List<Widget> _container = [
  // const HelloWorld(),
  // const ColumnWidget(),
  // const RowWidget(),
  // const ProductForm(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Flutter"),
        ),
        body: SafeArea(
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _listPageCurrentIndex = index;
                  });
                },
                children: const [
                  HelloWorld(),
                  ColumnWidget(),
                  RowWidget(),
                  ProductForm()
                ],
              )),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: _listPageCurrentIndex,
          animationDuration: const Duration(milliseconds: 300),
          backgroundColor: Colors.transparent,
          items: const <Widget>[
            Icon(Icons.home_filled, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.arrow_forward_rounded, size: 30),
            Icon(Icons.card_travel_rounded, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut);
            });
          },
        ));
  }
}
