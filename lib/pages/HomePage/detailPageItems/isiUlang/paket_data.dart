import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/garisPutus.dart';
import 'package:oepay/common/components/showDialogPembayaran.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/isiUlang/hasil_transaksi_data.dart';
import 'package:oepay/pages/HomePage/detailPageItems/isiUlang/hasil_transaksi_pulsa.dart';
import 'package:oepay/pages/HomePage/detailPageItems/penarikan/bca/konfirmasi_penarikan_otp.dart';

class PaketData extends StatefulWidget {
  const PaketData({super.key});

  @override
  State<PaketData> createState() => _PaketDataState();
}

class _PaketDataState extends State<PaketData> {
  bool isPaketDataSelected = false;
  int? selectedPulsaOption;

  void toggleSelection() {
    setState(() {
      isPaketDataSelected = !isPaketDataSelected;
      selectedPulsaOption = null; // Reset selection when switching tabs
    });
  }

  void selectPulsaOption(int option) {
    setState(() {
      selectedPulsaOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showCustomBottomSheet(
          context: context,
          titleHarga: 'BRONET 24 Jam 1GB 1Hr + ....',
          noHp: '085676445776',
          // pulsaData: '10GB + 20GB',
          transaksi: 'Rp.0',
          hargaPrice: 'Rp.15.000',
          totalPembayaran: 'Rp.15.000',
          saldoOeyPay: 'Rp.20.000',
          onPayPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Konfirmasipenarikanotp(
                  onConfirmation: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HasiltransaksiData(),
                      ),
                    );
                  },
                ),
              ),
            );
          }),
      child: Container(
        width: double.infinity,
        // margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(15),
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
              'Paket Data 50GB + 20GB  + Bonus Kuota Lokal',
              style: CustomTextStyles.textButton,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 10),
            Text(
              'Main Kuota 1 GB 1 hari selama 24 Jam disemua jaringan 2G/3G/4G. BONUS Lokal Kuota sesaui dengan area/lokasi cus',
              style: CustomTextStyles.titleProfil,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            // SizedBox(height: 5),
            // Container(
            //   padding: EdgeInsets.all(5),
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Text(
            //     'Single Zone',
            //     style: CustomTextStyles.textZone,
            //   ),
            // ),
            SizedBox(height: 10),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rp.100.000',
                  style: CustomTextStyles.titlesection,
                ),
                // Text(
                //   'Aktif 30 hari',
                //   style: TextStyle(color: Colors.grey),
                // ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '10%',
                    style: GoogleFonts.poppins(
                      color: Colors.pink,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'Rp 7.000',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorName.yellowColor),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.white,
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 20, top: 20),
                              child: Container(
                                height: 230,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.close),
                                    ),
                                    Text(
                                      'BRONET 24 Jam 1GB 1Hr + Bonus Lokal Kuota',
                                      style: CustomTextStyles.textButton,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Main Kuota 1 GB 1 hari selama 24 Jam disemua jaringan 2G/3G/4G. BONUS Lokal Kuota sesaui dengan area/lokasi',
                                      style: CustomTextStyles.titleProfil,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Text(
                      'Lihat Detail',
                      style: TextStyle(
                        color: Colors.black,
                      ),
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
