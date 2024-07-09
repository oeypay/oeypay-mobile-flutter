import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/garisPutus.dart';
import 'package:oepay/common/components/paketData.dart';
import 'package:oepay/common/components/paketPulsa.dart';
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
                    Paketpulsa(),
                    Paketpulsa(),
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
