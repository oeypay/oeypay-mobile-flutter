import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/garisPutus.dart';
import 'package:oepay/common/components/paketData.dart';
import 'package:oepay/common/components/showDialogPembayaran.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/pembayaranPulsa.dart';

class PulsaScreen extends StatefulWidget {
  const PulsaScreen({Key? key}) : super(key: key);

  @override
  State<PulsaScreen> createState() => _PulsaScreenState();
}

class _PulsaScreenState extends State<PulsaScreen> {
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

  Widget _buildPulsaOption(String? value, String? price) {
    bool isSelected = selectedPulsaOption == value;
    return GestureDetector(
      onTap: () => showCustomBottomSheet(
          context: context,
          noHp: '085676445776',
          pulsaData: '10.000',
          transaksi: 'Rp.0',
          hargaPulsa: 'Rp.15.000',
          totalPembayaran: 'Rp.15.000',
          saldoOeyPay: 'Rp.20.000',
          onPayPressed: () {
            customShowDialog();
          }),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: MediaQuery.of(context).size.width / 2 - 25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          // border: Border.all(color: ColorName.yellowColor, width: 1),
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
              '$value',
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Harga',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              price ?? '',
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void customShowDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: ColorName.light,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: ColorName.yellowColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        'Konfirmasi Pembayarn',
                        style: CustomTextStyles.titleProfilApp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Telkomsel',
                          style: CustomTextStyles.titlesection,
                        ),
                        Text(
                          'Rp6.500',
                          style: CustomTextStyles.titlesection,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sisa Saldo',
                          style: CustomTextStyles.titlesection,
                        ),
                        Text(
                          'Rp6.500',
                          style: CustomTextStyles.titlesection,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  DashedLineExample(),
                  // Row(
                  //   children: [
                  //     Text(
                  //       'Metode Pembayaran',
                  //       style: CustomTextStyles.titlesection,
                  //     ),
                  //     // RadioListTile(
                  //     //   title: const Text('OVO Cash'),
                  //     //   subtitle: const Text('Kurang Rp6.500'),
                  //     //   value: 'OVO Cash',
                  //     //   groupValue: 'OVO Cash',
                  //     //   onChanged: (value) {},
                  //     // ),
                  //   ],
                  // ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Tukar 0 Points'),
                        Switch(
                          value: true,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            offset: Offset(0, 3),
                            color: Colors.blueGrey.withOpacity(0.2),
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Bayar',
                              style: CustomTextStyles.titleItem,
                            ),
                            Text(
                              'Rp6.500',
                              style: CustomTextStyles.titleProfil,
                            ),
                          ],
                        ),
                        ButtonCustom.filled(
                          width: 120,
                          height: 40,
                          onPressed: () {
                            AwesomeDialog(
                              btnOkColor: Colors.blue,
                              context: context,
                              dialogType: DialogType.success,
                              animType: AnimType.rightSlide,
                              title: 'Berhasil',
                              desc: 'Pulsa selesai di bayar',
                              // btnCancelOnPress: () {},
                              btnOkOnPress: () {},
                            )..show();
                          },
                          label: 'Bayar',
                          color: ColorName.yellowColor,
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Pulsa & Paket Data'),
        centerTitle: true,
        backgroundColor: ColorName.yellowColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Nomor Ponsel field
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
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
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.phone_android, color: Colors.red),
                        SizedBox(width: 16.0),
                        Text(
                          'Telkomsel',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 30),
                          filled: true,
                          fillColor: Color(0xffFEF7dd),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide
                                .none, // Menghilangkan border outline default
                          ),
                          hintText: 'Nomor Ponsel',
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.close),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              // Isi Pulsa & Paket Data tabs
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (isPaketDataSelected) toggleSelection();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: !isPaketDataSelected
                            ? ColorName.yellowColor
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Isi Pulsa',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (!isPaketDataSelected) toggleSelection();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isPaketDataSelected
                            ? ColorName.yellowColor
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Paket Data',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Cashback banner

              const SizedBox(height: 16.0),
              // Pulsa options
              if (!isPaketDataSelected)
                Wrap(
                  spacing: 17.0,
                  runSpacing: 17.0,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffFEF7dd),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cashback 5% s.d. 1.500',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          const Text('Berakhir dalam 3 hari'),
                          const SizedBox(height: 8.0),
                          const Text(
                            'Min. penggunaan OVO Cash Rp25.000',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: Colors.red,
                              ),
                              child: const Icon(Icons.credit_card,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildPulsaOption("5.000", 'Rp.6.500'),
                    _buildPulsaOption('10.000', 'Rp.11.500'),
                    _buildPulsaOption('15.000', 'Rp.16.500'),
                    _buildPulsaOption('20.000', 'Rp.21.500'),
                    _buildPulsaOption('25.000', 'Rp.26.500'),
                    _buildPulsaOption('30.000', 'Rp.31.500'),
                    _buildPulsaOption('40.000', 'Rp.30.000'),
                    _buildPulsaOption('5.0000', 'Rp.20.000'),
                  ],
                )
              else
                // Paket Data options
                Wrap(
                  spacing: 16.0,
                  runSpacing: 16.0,
                  children: [
                    PaketData(),
                    PaketData(),
                    // _buildPulsaOption('1 GB', 'Rp. 20.000'),
                    // _buildPulsaOption('2 GB', 'Rp. 20.000'),
                    // _buildPulsaOption('3 GB', 'Rp. 20.000'),
                    // _buildPulsaOption('4 GB', 'Rp. 20.000'),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
