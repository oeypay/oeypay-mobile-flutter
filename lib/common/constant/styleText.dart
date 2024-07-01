import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/constant/colors.dart';

class CustomTextStyles {
  static TextStyle poppins({
    required double size,
    required Color color,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return GoogleFonts.poppins(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
    );
  }

  // Contoh gaya teks yang telah ditentukan sebelumnya
  static TextStyle verifikasiTitle = poppins(
    size: 20.0,
    color: const Color.fromARGB(255, 0, 0, 51),
    fontWeight: FontWeight.w400,
  );
  static TextStyle verifikasiDeskripsi =
      poppins(size: 16.0, color: Colors.blueGrey.shade600);
  static TextStyle textButton = poppins(
    size: 18.0,
    color: ColorName.black,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textZone = poppins(
    size: 12.0,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  static TextStyle titleItem = poppins(
      size: 13.0,
      color: const Color.fromARGB(255, 0, 0, 51),
      fontWeight: FontWeight.w400);

  static TextStyle titlesection = poppins(
    size: 15.0,
    color: const Color.fromARGB(255, 0, 0, 51),
    fontWeight: FontWeight.w500,
  );

  static TextStyle titleProfil = poppins(
    size: 14.0,
    color: Colors.black,
    // fontWeight: FontWeight.w500,
  );

  static TextStyle titleProfilApp = poppins(
    size: 18.0,
    color: Colors.black,
    // fontWeight: FontWeight.w500,
  );
}
