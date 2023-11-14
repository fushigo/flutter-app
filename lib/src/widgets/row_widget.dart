import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [Text("Row ke-1"), Text("Row ke-2"), Text("Row ke-3")],
        )
      ],
    );
  }
}
