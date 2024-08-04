import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/custom_container_card.dart';
import 'package:oepay/common/components/custom_textField.dart';
import 'package:oepay/common/components/widget_appbar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

class Visamaster extends StatefulWidget {
  const Visamaster({super.key});

  @override
  State<Visamaster> createState() => _VisamasterState();
}

class _VisamasterState extends State<Visamaster> {
  String? _nominal;

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Pilih Nominal',
            style: CustomTextStyles.titleShowModal,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ListTile(
                  title:
                      Text('Rp 200.000', style: CustomTextStyles.titlesection),
                  onTap: () {
                    setState(() {
                      _nominal = 'Rp 200.000';
                    });
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title:
                      Text('Rp 300.000', style: CustomTextStyles.titlesection),
                  onTap: () {
                    setState(() {
                      _nominal = 'Rp 300.000';
                    });
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title:
                      Text('Rp 500.000', style: CustomTextStyles.titlesection),
                  onTap: () {
                    setState(() {
                      _nominal = 'Rp 500.000';
                    });
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // String _nominal = 'Rp 200.000';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Top Up Debit Visa',
          style: CustomTextStyles.titleProfilApp,
        ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/provider/visa-master.svg',
                          width: 50,
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Debit Visa / Master Card',
                              style: CustomTextStyles.titlesection,
                            ),
                            Text(
                              'Metode Top Up',
                              style: CustomTextStyles.textCard,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Saldo OeyPay Anda Sekarang',
                              style: CustomTextStyles.textCard,
                            ),
                            Text(
                              'Rp 20.000',
                              style: CustomTextStyles.titlesection,
                            ),
                            Text(
                              'Maksimal Saldo OeyPay Rp 20.000.000',
                              style: GoogleFonts.poppins(
                                color: Colors.red.shade800,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorName.yellowSmoth.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  height: 50,
                  child: InputDecorator(
                    decoration: InputDecoration(
                      labelText: 'Pilih Nominal',
                      enabled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey.shade100),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: InkWell(
                      onTap: () => _showConfirmationDialog(context),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _nominal ?? 'Pilih Nominal',
                              style: CustomTextStyles.titlesection,
                            ),
                            const Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Informasi Kartu',
                    style: CustomTextStyles.titleShowModal,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorName.yellowSmoth.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: CustomTextFormField(
                    labelText: 'Nomor Kartu',
                    initialValue: '032243435454',
                    enabledBorderColor: Colors.blueGrey.shade100,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  decoration: BoxDecoration(
                    color: ColorName.yellowSmoth.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextFormField(
                    labelText: 'Masa Berlaku',
                    initialValue: 'Juli 2024',
                    enabledBorderColor: Colors.blueGrey.shade100,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  decoration: BoxDecoration(
                    color: ColorName.yellowSmoth.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextFormField(
                    labelText: 'CVV',
                    initialValue: '454',
                    enabledBorderColor: Colors.blueGrey.shade100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 3),
                  child: Text(
                    '3 digit terakhir pada bagian terakhir kartu anda',
                    style: CustomTextStyles.titleItem,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: ButtonCustom.filled(
                    height: 40,
                    width: double.infinity,
                    onPressed: () {},
                    label: 'Top Up',
                    color: ColorName.yellowColor,
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
