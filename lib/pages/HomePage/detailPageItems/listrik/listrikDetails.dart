import 'package:flutter/material.dart';
import 'package:flutter_native_contact_picker/flutter_native_contact_picker.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/isiUlang/paketData.dart';
import 'package:oepay/pages/HomePage/detailPageItems/isiUlang/paketPulsa.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/HomePage/detailPageItems/listrik/tagihanListrik.dart';
import 'package:oepay/pages/HomePage/detailPageItems/listrik/tokenListrik.dart';

class ListrikDetails extends StatefulWidget {
  const ListrikDetails({Key? key}) : super(key: key);

  @override
  State<ListrikDetails> createState() => _ListrikDetailsState();
}

class _ListrikDetailsState extends State<ListrikDetails> {
  bool isTokenListrik = false;
  int? selectedPulsaOption;
  final TextEditingController _controller = TextEditingController();

  void toggleSelection() {
    setState(() {
      isTokenListrik = !isTokenListrik;
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
          'Listrik',
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        // initialValue: kontak,
                        controller: _controller,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 30),
                          filled: true,
                          fillColor: Color(0xffFEF7dd),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide
                                .none, // Menghilangkan border outline default
                          ),
                          hintText: 'Nomor Meter',
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
                        if (isTokenListrik) toggleSelection();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: !isTokenListrik
                            ? ColorName.yellowColor
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Token Listrik',
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
                        if (!isTokenListrik) toggleSelection();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isTokenListrik
                            ? ColorName.yellowColor
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Tagihan Listrik',
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
              if (!isTokenListrik)
                Wrap(
                  spacing: 17.0,
                  runSpacing: 17.0,
                  children: [
                    TokenListrik(),
                    TokenListrik(),
                  ],
                )
              else
                // Paket Data options
                Wrap(
                  spacing: 16.0,
                  runSpacing: 16.0,
                  children: [
                    TagihanListrik(),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
