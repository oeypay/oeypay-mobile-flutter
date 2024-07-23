import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';

class PencarianKeberangkatan extends StatelessWidget {
  final String title;

  const PencarianKeberangkatan({super.key, required this.title});

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
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
