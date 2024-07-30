import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

import '../pesawat/cariBandara.dart';

class PencarianStasiun extends StatelessWidget {
  final String title;

  const PencarianStasiun({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: ColorName.yellowColor,
      ),
      body: Column(
        children: [
          Container(
            color: ColorName.yellowSmoth,
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                labelText: 'Cari ...',
                prefixIcon: Icon(Icons.search),
                enabled: true,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          ListBandara(),
        ],
      ),
    );
  }
}
