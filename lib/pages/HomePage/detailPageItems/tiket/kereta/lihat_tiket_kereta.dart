import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

class LihatETiketScreen extends StatelessWidget {
  const LihatETiketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Tiket Kereta',
          style: CustomTextStyles.titleProfil,
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Tiket Keberangkatan',
              style: CustomTextStyles.titlesection,
            ),
            leading: Icon(
              Icons.train,
              color: Colors.lime.shade900,
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.teal,
                ),
                Text(
                  'Dana dapat di kembalikan',
                  style: CustomTextStyles.poppins(
                    size: 13,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: ColorName.yellowSmoth,
            child: Column(
              children: [
                Text('Kode booking'),
                Text('IE45R'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
