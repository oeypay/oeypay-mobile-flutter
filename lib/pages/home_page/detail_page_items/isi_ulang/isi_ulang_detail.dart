import 'package:flutter/material.dart';
import 'package:flutter_native_contact_picker/flutter_native_contact_picker.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/common/constant/colors.dart';

import 'paket_data.dart';
import 'paket_pulsa.dart';

class PulsaScreen extends StatefulWidget {
  const PulsaScreen({Key? key}) : super(key: key);

  @override
  State<PulsaScreen> createState() => _PulsaScreenState();
}

class _PulsaScreenState extends State<PulsaScreen> {
  final FlutterContactPicker _contactPicker = new FlutterContactPicker();
  List<Contact>? _contacts;
  bool isPaketDataSelected = false;
  int? selectedPulsaOption;
  String kontak = '';
  final TextEditingController _contactController =
      TextEditingController(text: '08767786673');

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
        title: Text(
          'Pulsa & Paket Data',
          style: CustomTextStyles.titleProfilApp,
        ),
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
                      child: TextFormField(
                        // initialValue: kontak,
                        controller: _contactController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 30),
                          filled: true,
                          fillColor: Color(0xffFEF7dd),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide
                                .none, // Menghilangkan border outline default
                          ),
                          prefixIcon: IconButton(
                            onPressed: () async {
                              Contact? contact =
                                  await _contactPicker.selectContact();
                              setState(() {
                                _contacts = contact == null ? null : [contact];
                                _contactController.text =
                                    contact!.phoneNumbers!.single;
                              });
                            },
                            icon: Icon(Icons.contacts),
                          ),
                          hintText: 'Nomor Ponsel',
                          suffixIcon: IconButton(
                            onPressed: () {
                              _contactController.clear();
                            },
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
              const SizedBox(height: 16.0),
              // Pulsa options
              if (!isPaketDataSelected)
                Wrap(
                  spacing: 17.0,
                  runSpacing: 17.0,
                  children: [
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
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
