import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

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
          ListBandara(),
        ],
      ),
    );
  }
}

class ListBandara extends StatelessWidget {
  const ListBandara({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.location_on_sharp,
        color: Colors.grey,
      ),
      title: Text(
        'Soekarno Hatta International Airport',
        style: CustomTextStyles.titlesection,
      ),
      subtitle: Text(
        'Jakarta/Indonesai',
        style: CustomTextStyles.titleItem,
      ),
    );
  }
}
