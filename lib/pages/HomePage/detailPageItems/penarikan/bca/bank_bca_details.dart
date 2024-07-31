import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/customContainerCard.dart';
import 'package:oepay/common/components/widgetAppBar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/penarikan/bca/konfirmasi_penarikan_otp.dart';
import 'package:oepay/pages/HomePage/detailPageItems/penarikan/bca/penarikan_tunai_bca.dart';

class Bankbcadetails extends StatefulWidget {
  const Bankbcadetails({super.key});

  @override
  State<Bankbcadetails> createState() => _BankbcadetailsState();
}

class _BankbcadetailsState extends State<Bankbcadetails> {
  final TextEditingController _nominalController =
      TextEditingController(text: 'Rp. 300.000');
  String? _selectedNominal;
  void _updateNominal(String newValue) {
    setState(() {
      _nominalController.text = newValue;
      _selectedNominal = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Penarikan Dari ATM Bank',
          style: CustomTextStyles.titleProfilApp,
        ),
      ),
      body: Stack(
        children: [
          Widgetappbar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainerCard(
                color: Colors.blueGrey.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Bank/bca.svg',
                        width: 50,
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ATM BCA'),
                          Text(
                            'Metode Penarikan',
                            style: CustomTextStyles.textCard,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Sumber Dana',
                  style: CustomTextStyles.titlesection,
                ),
              ),
              CustomContainerCard(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/merch.svg',
                        width: 35,
                        color: ColorName.yellowColor,
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/logo.svg',
                            width: 70,
                          ),
                          Text(
                            'Saldo Rp 5.000.000',
                            style: CustomTextStyles.titlesection,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: _nominalController,
                  style: CustomTextStyles.textVirtualAccount,
                  decoration: InputDecoration(
                    label: Text(
                      'Nominal Penarikan',
                      style: CustomTextStyles.verifikasiDeskripsi,
                    ),
                    error: Text(
                      'Min penarikan Rp. 50.000',
                      style: GoogleFonts.poppins(
                        color: Colors.red.shade800,
                        fontSize: 11,
                      ),
                    ),
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _container('Rp. 300.000'),
                    _container('Rp. 400.000'),
                    _container('Rp. 500.000'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _container('Rp. 600.000'),
                    _container('Rp. 700.000'),
                    _container('Rp. 1.000.000'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ButtonCustom.filled(
                  height: 40,
                  width: double.infinity,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Konfirmasipenarikanotp(
                          onConfirmation: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PenarikanTunaiBca(),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                  label: 'Lanjutkan',
                  color: ColorName.yellowColor,
                  textColor: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _container(String nominal) {
    bool isSelected = _selectedNominal == nominal;
    return GestureDetector(
      onTap: () => _updateNominal(nominal),
      child: Container(
        width: 100,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.teal : Color(0xffF0F0F0),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            nominal,
            style: CustomTextStyles.textNominal,
          ),
        ),
      ),
    );
  }
}
