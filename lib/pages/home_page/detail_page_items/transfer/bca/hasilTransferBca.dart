import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/custom_container_card.dart';
import 'package:oepay/common/components/garis_putus.dart';
import 'package:oepay/common/components/widget_alur_topup.dart';
import 'package:oepay/common/components/widget_appbar.dart';
import 'package:oepay/common/components/widget_list_hasil_transaksi.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

import '../transferDetails.dart';

class CustomHasilTransferBca extends StatefulWidget {
  final String image;
  final String nama;
  final String namaBank;
  final String kodeID;
  final String nTransfer;
  final String bTransaksi;
  final String tanggal;
  final String waktu;
  final String nReferensi;
  final String total;

  const CustomHasilTransferBca({
    super.key,
    required this.image,
    required this.nama,
    required this.namaBank,
    required this.kodeID,
    required this.nTransfer,
    required this.bTransaksi,
    required this.total,
    required this.tanggal,
    required this.waktu,
    required this.nReferensi,
  });

  @override
  State<CustomHasilTransferBca> createState() => _CustomHasilTransferBcaState();
}

class _CustomHasilTransferBcaState extends State<CustomHasilTransferBca> {
  late ExpandedTileController _controller;

  @override
  void initState() {
    // initialize controller
    _controller = ExpandedTileController(isExpanded: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      color: Colors.blueGrey.shade200,
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Icon(
            Icons.check_circle,
            color: Colors.teal,
            size: 30,
          ),
          const Text(
            'Transaksi Berhasil',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
          const SizedBox(height: 30),
          Image.asset(widget.image),
          Text(
            widget.nama,
            style: CustomTextStyles.textButton,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${widget.namaBank} - ',
                style: CustomTextStyles.titleItem,
              ),
              Text('${widget.kodeID} ', style: CustomTextStyles.titleItem),
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nominal Transfer',
                  style: CustomTextStyles.titlesection,
                ),
                Text(
                  widget.nTransfer,
                  style: CustomTextStyles.titlesection,
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nominal Transaksi',
                  style: CustomTextStyles.titlesection,
                ),
                Text(
                  widget.bTransaksi,
                  style: CustomTextStyles.titlesection,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const Divider(),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CustomExpandedTile(
              controller: _controller,
              title: 'Detail',
              contentWidgets: Column(
                children: [
                  CustomLis(
                    title: 'Tanggal',
                    deskripsi: widget.tanggal,
                  ),
                  CustomLis(
                    title: 'Waktu',
                    deskripsi: widget.waktu,
                  ),
                  CustomLis(
                    title: 'No. Referensi',
                    deskripsi: widget.nReferensi,
                  ),
                  CustomLis(
                    title: 'Nominal Transfer',
                    deskripsi: widget.nTransfer,
                  ),
                  CustomLis(
                    title: 'Biaya Transaksi',
                    deskripsi: widget.bTransaksi,
                  ),
                  const SizedBox(height: 7),
                  const DashedLineExample(),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          'Total',
                          style: CustomTextStyles.titleShowModal,
                        ),
                      ),
                      Text(
                        widget.total,
                        style: CustomTextStyles.titleShowModal,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HasiltransferBca extends StatelessWidget {
  const HasiltransferBca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close_rounded),
        ),
      ),
      body: Stack(
        children: [
          Widgetappbar(),
          SingleChildScrollView(
            child: Column(
              children: [
                const CustomHasilTransferBca(
                  image: 'assets/icons/Group 16.png',
                  nama: 'Ahmad Kardawi',
                  namaBank: 'BANK BCA',
                  kodeID: '098098987',
                  nTransfer: 'Rp 200.000',
                  bTransaksi: 'Rp 2.000',
                  total: 'Rp 202.000',
                  tanggal: '01 November 2025',
                  waktu: '12:00',
                  nReferensi: 'tR9889sss',
                ),
                const HelpSection(),
                const SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: ButtonCustom.filled(
                    height: 40,
                    width: double.infinity,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const TransferDetails(),
                        ),
                      );
                    },
                    label: 'Tutup',
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
