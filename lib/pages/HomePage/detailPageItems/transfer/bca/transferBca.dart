import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/customContainerCard.dart';
import 'package:oepay/common/components/customTextField.dart';
import 'package:oepay/common/components/garisPutus.dart';
import 'package:oepay/common/components/widgetAppBar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/penarikan/bca/konfirmasiPenarikanOtp.dart';
import 'package:oepay/pages/HomePage/detailPageItems/penarikan/bca/penarikanTunaiBca.dart';
import 'package:oepay/pages/HomePage/detailPageItems/transfer/bca/hasilTransferBca.dart';

class TransferBca extends StatefulWidget {
  const TransferBca({super.key});

  @override
  State<TransferBca> createState() => _TransferBcaState();
}

class _TransferBcaState extends State<TransferBca> {
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
        title: Text('Transfer Ke Rekening Bank'),
      ),
      body: Stack(
        children: [
          Widgetappbar(),
          SingleChildScrollView(
            child: Column(
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
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextFormField(
                    labelText: 'Nomor rekening tujuan',
                    enabledBorderColor: Colors.transparent,
                    focusedBorderColor: Colors.transparent,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 20, right: 20),
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
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextFormField(
                    maxlength: 30,
                    labelText: 'Pesan (opsional)',
                    enabledBorderColor: Colors.transparent,
                    focusedBorderColor: Colors.transparent,
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
                          img: 'assets/icons/Bank/bca.svg',
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
                                        builder: (context) =>
                                            HasiltransferBca(),
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
          ),
        ],
      ),
    );
  }
}

void showDialogPenarikan({
  required String title,
  required String nama,
  required String namaBank,
  required String kodeId,
  final String? img,
  required String nTransfer,
  required String bTransaksi,
  required String total,
  required BuildContext context,
  required VoidCallback ontab,
}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          height: 460,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: ColorName.light,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: CustomTextStyles.titleShowModal,
              ),
              SizedBox(height: 20),
              Text(
                'Penerima',
                style: CustomTextStyles.textCard,
              ),
              Text(
                nama,
                style: CustomTextStyles.titlesection,
              ),
              Row(
                children: [
                  if (img != null)
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: SvgPicture.asset(
                        img,
                        width: 50,
                      ),
                    )
                  else
                    Container(),
                  Text(
                    '${namaBank} - ',
                    style: CustomTextStyles.titleItem,
                  ),
                  Text(
                    kodeId,
                    style: CustomTextStyles.titleItem,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Sumber Dana',
                style: CustomTextStyles.textCard,
              ),
              SvgPicture.asset(
                'assets/icons/logo.svg',
                width: 70,
              ),
              SizedBox(height: 20),
              Text(
                'Detail',
                style: CustomTextStyles.titleShowModal,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nominal Transfer',
                    style: CustomTextStyles.titlesection,
                  ),
                  Text(
                    nTransfer,
                    style: CustomTextStyles.titlesection,
                  ),
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Biaya Transaksi',
                    style: CustomTextStyles.titlesection,
                  ),
                  Text(
                    bTransaksi,
                    style: CustomTextStyles.titlesection,
                  ),
                ],
              ),
              SizedBox(height: 30),
              DashedLineExample(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: CustomTextStyles.titlesection,
                  ),
                  Text(
                    total,
                    style: CustomTextStyles.titlesection,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonCustom.filled(
                    height: 40,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: 'Batalkan',
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                  ButtonCustom.filled(
                    height: 40,
                    onPressed: ontab,
                    label: 'Konfirmasi',
                    color: ColorName.yellowColor,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
