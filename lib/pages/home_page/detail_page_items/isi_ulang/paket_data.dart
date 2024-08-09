import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/style_text.dart';

class PaketData extends StatelessWidget {
  final void Function()? pressCard, pressDetail;
  final String? price, totalHarga, title, discount, discountedPrice, desc;
  const PaketData(
      {super.key,
      this.desc,
      this.discount,
      this.discountedPrice,
      this.pressCard,
      this.pressDetail,
      this.price,
      this.title,
      this.totalHarga});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressCard,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
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
            Text(
              title ?? '',
              style: CustomTextStyles.textButton,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Text(
              desc ?? '',
              style: CustomTextStyles.titleProfil,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  price ?? '',
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    discount ?? '',
                    style: GoogleFonts.poppins(
                        color: Colors.pink,
                        fontWeight: FontWeight.w600,
                        fontSize: 10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    discountedPrice ?? '',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: pressDetail,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ColorName.yellowColor),
                    child: Text(
                      'Lihat Detail',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
