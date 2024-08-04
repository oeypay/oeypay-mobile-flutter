import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart'; // Pastikan sudah menambahkan dependensi di pubspec.yaml

class DashedLineExample extends StatelessWidget {
  const DashedLineExample({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double maxWidth = constraints.maxWidth;
        return Center(
          child: Dash(
            direction: Axis.horizontal,
            length: maxWidth, // Menggunakan lebar yang tersedia
            dashLength: 15,
            dashGap: 4,
            dashColor: Colors.blueGrey.shade300,
            dashBorderRadius: 4,
            dashThickness: 1,
          ),
        );
      },
    );
  }
}
