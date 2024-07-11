import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/customTextField.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

class RiwayatPage extends StatefulWidget {
  @override
  _RiwayatPageState createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text('Riwayat'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => FilterBottomSheet(),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return RiwayatItem(
            tanggal: '1 Juli 2024',
            keterangan: 'Transfer ke MUHAMMAD ASDAR',
            jenis: 'Transfer Keluar',
            nominal: 'Rp 200.000',
            waktu: '10:09 WIB',
          );
        },
      ),
    );
  }
}

class RiwayatItem extends StatelessWidget {
  final String tanggal;
  final String keterangan;
  final String jenis;
  final String nominal;
  final String waktu;

  const RiwayatItem({
    Key? key,
    required this.tanggal,
    required this.keterangan,
    required this.jenis,
    required this.nominal,
    required this.waktu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 25,
            color: ColorName.yellowSmoth,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 3),
              child: Text(
                tanggal,
                style: CustomTextStyles.titleItem,
              ),
            ),
          ),
          // SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  keterangan,
                  style: CustomTextStyles.titlesection,
                ),
                Text(
                  nominal,
                  style: CustomTextStyles.poppins(
                    size: 17,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  jenis,
                  style: CustomTextStyles.textCard,
                ),
                Text(
                  waktu,
                  style: CustomTextStyles.titleItem,
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Divider(),
        ],
      ),
    );
  }
}

class FilterBottomSheet extends StatefulWidget {
  @override
  _FilterBottomSheetState createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  DateTime? _selectedDate;
  DateTime? _selectedReturnDate;
  DateTime initDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd/MM/yyyy').format(initDate);
    // String selectFormat = DateFormat('dd/MM/yyyy').format(_selectedDate!);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Filter',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            _radioButton(
              'Hari ini',
              Icon(
                Icons.radio_button_checked,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10),
            _radioButton(
              'Rentang Tanggal',
              Icon(
                Icons.radio_button_checked,
                color: Colors.grey,
              ),
            ),
            // Add filter options here
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2100),
                      );
                      if (pickedDate != null) {
                        setState(() {
                          _selectedDate = pickedDate;
                        });
                      }
                    },
                    child: InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Dari Tanggal',
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          color: Colors.grey.shade600,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellow),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        _selectedDate != null
                            ? '${DateFormat('dd/MM/yyyy').format(_selectedDate!)}'
                            : '${formattedDate}',
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2100),
                      );
                      if (pickedDate != null) {
                        setState(() {
                          _selectedReturnDate = pickedDate;
                        });
                      }
                    },
                    child: InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Sampai Tanggal',
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          color: Colors.grey.shade600,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellow),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        _selectedReturnDate != null
                            ? '${DateFormat('dd/MM/yyyy').format(_selectedDate!)}'
                            : '${formattedDate}',
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'Rentang tanggal waktu maksimum 30 hari yang lalu',
              style: CustomTextStyles.poppins(
                size: 10,
                color: Colors.red.shade900,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Kategori',
              style: CustomTextStyles.titleItem,
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        child: Column(
                          children: [],
                        ),
                      );
                    });
              },
              child: _radioButton(
                'Semua Kategori',
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            // Spacer(),
            SizedBox(height: 10),
            ButtonCustom.filled(
              width: double.infinity,
              height: 45,
              onPressed: () {},
              label: 'Terapkan',
              color: ColorName.yellowColor,
              textColor: Colors.black,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _radioButton(String text, Icon icon) {
    return Container(
      padding: EdgeInsets.only(left: 8, top: 5, bottom: 5),
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: CustomTextStyles.titlesection,
          ),
          IconButton(
            onPressed: () {},
            icon: icon,
          ),
        ],
      ),
    );
  }
}
