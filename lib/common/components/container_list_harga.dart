import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

class Containerlistharga extends StatelessWidget {
  final String? harga,
      totalHarga,
      price,
      discount,
      discountedPrice,
      namaPln,
      hargaVoucher,
      totalhargaVoucher;

  final void Function()? press;
  const Containerlistharga({
    super.key,
    this.harga,
    this.totalHarga,
    this.price,
    this.discount,
    this.discountedPrice,
    this.namaPln,
    this.hargaVoucher,
    this.press,
    this.totalhargaVoucher,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: MediaQuery.of(context).size.width / 2 - 25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 0),
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
            const Spacer(),
            if (harga != null)
              Text(
                harga!,
                style: const TextStyle(
                    fontSize: 12, height: 1, color: ColorName.black),
              )
            else
              Text(
                hargaVoucher!,
                style: CustomTextStyles.titleShowModal,
              ),
            if (hargaVoucher != null) const SizedBox(height: 4.0),
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
            const Spacer(),
            if (discount != null)
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                    decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(.2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      discount!,
                      style: GoogleFonts.poppins(
                          color: Colors.pink,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      discountedPrice!,
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 13,
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
      ),
    );
  }
}
