import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/constant/styleText.dart';

class Containerlistharga extends StatelessWidget {
  String? harga;
  String? totalHarga;
  String? price;
  String? discount;
  String? discountedPrice;
  String? namaPln;
  String? hargaVoucher;
  String? totalhargaVoucher;
  Containerlistharga({
    Key? key,
    this.harga,
    this.totalHarga,
    this.price,
    this.discount,
    this.discountedPrice,
    this.namaPln,
    this.hargaVoucher,
    this.totalhargaVoucher,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: MediaQuery.of(context).size.width / 2 - 25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (price != null)
            Text(
              price!,
              style: CustomTextStyles.textButton,
            )
          else
            Text(
              namaPln!,
              style: CustomTextStyles.textButton,
            ),
          const SizedBox(height: 8.0),
          if (harga != null)
            Text(
              harga!,
              style: CustomTextStyles.titleProfil,
            )
          else
            Text(
              hargaVoucher!,
              style: CustomTextStyles.titleShowModal,
            ),
          const SizedBox(height: 4.0),
          if (totalHarga != null)
            Text(
              totalHarga!,
              style: CustomTextStyles.titleShowModal,
            )
          else
            Text(
              totalhargaVoucher!,
              style: CustomTextStyles.poppins(
                  size: 15, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          SizedBox(height: 5),
          if (discount != null)
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    discount!,
                    style: GoogleFonts.poppins(
                      color: Colors.pink,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    discountedPrice!,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ],
            )
          else
            Container(),
        ],
      ),
    );
  }
}
