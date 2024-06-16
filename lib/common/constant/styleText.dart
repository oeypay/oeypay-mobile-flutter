import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/constant/colors.dart';

class CustomTextStyles {
  static TextStyle rubik({
    required double size,
    required Color color,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return GoogleFonts.rubik(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
    );
  }

  // Contoh gaya teks yang telah ditentukan sebelumnya
  static TextStyle verifikasiTitle = rubik(
      size: 20.0,
      color: const Color.fromARGB(255, 0, 0, 51),
      fontWeight: FontWeight.w400);
  static TextStyle verifikasiDeskripsi =
      rubik(size: 16.0, color: Colors.blueGrey.shade600);
  static TextStyle textButton = rubik(
    size: 18.0,
    color: ColorName.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle titleItem = rubik(
      size: 13.0,
      color: const Color.fromARGB(255, 0, 0, 51),
      fontWeight: FontWeight.w400);

  static TextStyle titlesection = rubik(
    size: 15.0,
    color: const Color.fromARGB(255, 0, 0, 51),
    fontWeight: FontWeight.w500,
  );
}
