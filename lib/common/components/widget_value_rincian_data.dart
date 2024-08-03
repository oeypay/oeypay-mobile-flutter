import 'package:flutter/material.dart';
import 'package:oepay/common/constant/styleText.dart';

class ValueRincianData extends StatelessWidget {
  final String nama;
  final String data1;
  final String data2;
  final String? tuan;
  final IconData? icon;

  ValueRincianData({
    super.key,
    required this.nama,
    required this.data1,
    required this.data2,
    this.icon,
    this.tuan,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 25,
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  nama,
                  style: CustomTextStyles.titlesection,
                ),
                SizedBox(width: 10),
                if (tuan != null)
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Text(
                      tuan!,
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                else
                  Container(),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data1,
                  style: CustomTextStyles.titleProfil,
                ),
                if (icon != null) Icon(Icons.chevron_right) else Container(),
              ],
            ),
            Text(
              data2,
              style: CustomTextStyles.titleProfil,
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
