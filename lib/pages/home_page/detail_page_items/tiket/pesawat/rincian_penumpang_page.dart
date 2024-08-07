import 'package:flutter/material.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';
import 'rincian_kontak_page.dart';

class RincianPenumpangPage extends StatelessWidget {
  final TextEditingController _judulController =
      TextEditingController(text: 'Tuan');
  final TextEditingController _namaDController =
      TextEditingController(text: 'Ahmad');
  final TextEditingController _namaBController =
      TextEditingController(text: 'Kardawi');
  final TextEditingController _negaraController =
      TextEditingController(text: 'Indonesia');
  final TextEditingController _tglLahriBController =
      TextEditingController(text: '1 Juni 1999');
  final TextEditingController _nomorKtpController =
      TextEditingController(text: '033435456534242343');

  final Function(Map<String, String>) onSave;

  RincianPenumpangPage({super.key, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: const Text('Rincian Penumpang'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              children: [
                ContactInfoTile(
                  icon: 'assets/icons/people2.png',
                  label: 'Judul',
                  controller: _judulController,
                ),
                const SizedBox(height: 10),
                ContactInfoTile(
                  icon: 'assets/icons/people.png',
                  label: 'Nama Depan',
                  controller: _namaDController,
                ),
                const SizedBox(height: 10),
                ContactInfoTile(
                  icon: 'assets/icons/people.png',
                  label: 'Nama Belakang',
                  controller: _namaBController,
                ),
                const SizedBox(height: 10),
                ContactInfoTile(
                  icon: 'assets/icons/globe.png',
                  label: 'Kewarganegaraan',
                  controller: _negaraController,
                ),
                const SizedBox(height: 10),
                ContactInfoTile(
                  icon: 'assets/icons/tgl.png',
                  label: 'Tanggal Lahir',
                  controller: _tglLahriBController,
                ),
                const SizedBox(height: 10),
                ContactInfoTile(
                  icon: 'assets/icons/tgl.png',
                  label: 'Nomor KTP/NIK',
                  controller: _nomorKtpController,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: ButtonCustom.filled(
              width: double.infinity,
              onPressed: () {
                onSave({
                  'judul': _judulController.text,
                  'namaDepan': _namaDController.text,
                  'namaBelakang': _namaBController.text,
                  'kewarganegaraan': _negaraController.text,
                  'tanggalLahir': _tglLahriBController.text,
                  'nomorKtp': _nomorKtpController.text,
                });
                Navigator.pop(context);
              },
              label: 'Simpan',
              color: ColorName.yellowColor,
              textColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
