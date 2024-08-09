import 'package:flutter/material.dart';
import 'package:oepay/common/constant/style_text.dart';

class ValueRincianData extends StatelessWidget {
  final String nama;
  final String data1;
  final String data2;
  final String? tuan;
  final IconData? icon;
  final String? kursi;
  final String? nomorGerbong;

  const ValueRincianData({
    super.key,
    required this.nama,
    required this.data1,
    required this.data2,
    this.icon,
    this.tuan,
    this.kursi,
    this.nomorGerbong,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
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
                const SizedBox(width: 10),
                if (tuan != null)
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Text(
                      tuan!,
                      style: const TextStyle(fontSize: 10),
                    ),
                  )
                else
                  Container(),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data1,
                  style: CustomTextStyles.titleProfil,
                ),
                if (kursi != null)
                  Text(
                    kursi!,
                    style: CustomTextStyles.poppins(
                      size: 12,
                      color: Colors.red,
                    ),
                  ),
                if (icon != null) const Icon(Icons.chevron_right)
                // else
                //   Container(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data2,
                  style: CustomTextStyles.titleProfil,
                ),
                if (nomorGerbong != null)
                  Text(
                    nomorGerbong!,
                    style: CustomTextStyles.poppins(
                      size: 12,
                      color: Colors.red,
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
