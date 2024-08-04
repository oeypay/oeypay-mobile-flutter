import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/custom_container_card.dart';
import 'package:oepay/common/components/custom_textField.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import '../../penarikan/bca/konfirmasi_penarikan_otp.dart';
import '../bca/hasilTransferBca.dart';
import '../bca/transferBca.dart';
import 'scanIdOeyPay.dart';

class Sesamaoeypay extends StatefulWidget {
  const Sesamaoeypay({super.key});

  @override
  State<Sesamaoeypay> createState() => _SesamaoeypayState();
}

class _SesamaoeypayState extends State<Sesamaoeypay> {
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Akun Saya',
              style: CustomTextStyles.titleShowModal,
            ),
          ),
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
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahmad',
                        style: CustomTextStyles.titlesection,
                      ),
                      Row(
                        children: [
                          Text(
                            '086-6755-6575',
                            style: CustomTextStyles.titleItem,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Salin',
                            style: CustomTextStyles.poppins(
                              size: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      _showQrCode();
                    },
                    icon: const Icon(
                      Icons.qr_code_2_rounded,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              'Transfer ke sesama OeyPay',
              style: CustomTextStyles.titleShowModal,
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
                  const SizedBox(width: 15),
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
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: CustomTextFormField(
              labelText: 'Masukka Nomor Ponsel / ID OeyPay',
              enabledBorderColor: Colors.transparent,
              focusedBorderColor: Colors.transparent,
              suffixIcon: Icons.crop_free,
              onSuffixIconPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScanIdOeypay(),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
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
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const CustomTextFormField(
              maxlength: 30,
              labelText: 'Pesan (opsional)',
              enabledBorderColor: Colors.transparent,
              focusedBorderColor: Colors.transparent,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _container('Rp 200.000'),
                _container('Rp 300.000'),
                _container('Rp 400.000'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _container('Rp 500.000'),
                _container('Rp 600.000'),
                _container('Rp 700.000'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ButtonCustom.filled(
              height: 40,
              width: double.infinity,
              onPressed: () {
                showDialogPenarikan(
                    context: context,
                    title: 'Detail Transaksi',
                    nama: 'Ah*a*',
                    namaBank: 'BANK BCA',
                    kodeId: '0987665669',
                    // img: '',
                    nTransfer: 'Rp 200.000',
                    bTransaksi: 'Rp 0',
                    total: 'Rp 200.000',
                    ontab: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Konfirmasipenarikanotp(
                            onConfirmation: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HasiltransferBca(),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    });
              },
              label: 'Lanjutkan',
              color: ColorName.yellowColor,
              textColor: Colors.black,
            ),
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
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.teal : const Color(0xffF0F0F0),
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

  void _showQrCode() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Scan ID OeyPay Saya',
                        style: CustomTextStyles.titleShowModal,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: Icon(
                    Icons.qr_code_2_sharp,
                    size: 350,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'ID OeyPay : ',
                        style: CustomTextStyles.titleProfilApp,
                      ),
                      Text(
                        '99876575',
                        style: CustomTextStyles.titleShowModal,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Salin',
                        style: CustomTextStyles.titleProfil,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
