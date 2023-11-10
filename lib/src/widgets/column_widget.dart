import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Colom ke-1"),
        Text("Colom ke-2"),
        Text("Colom ke-3"),
        Text("Colom ke-4"),
      ],
    );
  }
}
