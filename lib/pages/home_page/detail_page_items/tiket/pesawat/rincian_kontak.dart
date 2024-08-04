import 'package:flutter/material.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

class RincianKontakPage extends StatelessWidget {
  final TextEditingController _nameController =
      TextEditingController(text: 'Zulkiplih');
  final TextEditingController _emailController =
      TextEditingController(text: 'Zulkiplih@mail.com');
  final TextEditingController _phoneController =
      TextEditingController(text: '082382783287');

  final Function(Map<String, String>) onSave;

  RincianKontakPage({super.key, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Rincian Kontak',
          style: CustomTextStyles.titleProfilApp,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
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
                  icon: 'assets/icons/people.png',
                  label: 'Nama Lengkap',
                  controller: _nameController,
                ),
                const SizedBox(height: 10),
                ContactInfoTile(
                  icon: 'assets/icons/email.png',
                  label: 'Email',
                  controller: _emailController,
                ),
                const SizedBox(height: 10),
                ContactInfoTile(
                  icon: 'assets/icons/tlp.png',
                  label: 'No Hp',
                  controller: _phoneController,
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
                  'nama': _nameController.text,
                  'email': _emailController.text,
                  'ponsel': _phoneController.text,
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

class ContactInfoTile extends StatelessWidget {
  final String icon;
  final String label;
  final TextEditingController controller;

  const ContactInfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blueGrey.shade200),
      ),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 20,
          ),
          Container(
            width: 1,
            height: 30,
            color: Colors.grey,
            margin: const EdgeInsets.only(left: 15),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   label,
                //   style: TextStyle(color: Colors.grey, fontSize: 12),
                // ),
                TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: label,
                    labelStyle: CustomTextStyles.poppins(
                      size: 14,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  style: CustomTextStyles.titleProfil,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
