import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/customContainerCard.dart';
import 'package:oepay/common/components/showCustomTiketPesawat.dart';
import 'package:oepay/common/components/widgetAppBar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/cariPenerbangan.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/cariTicket.dart';

class TiketPage extends StatefulWidget {
  const TiketPage({super.key});

  @override
  State<TiketPage> createState() => _TiketPageState();
}

class _TiketPageState extends State<TiketPage> {
  bool isSatuArah = false;
  bool _isSwitched = false;
  int _adultCount = 0;
  int _childCount = 0;
  int _infantCount = 0;
  String _selectedClass = 'Ekonomi';

  DateTime? _selectedDate;
  DateTime? _selectedReturnDate;

  void toggleSelection() {
    setState(() {
      isSatuArah = !isSatuArah;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeDateFormatting('id_ID', null);
  }

  void _onFieldTap({required BuildContext context, required Widget child}) {
    showModalBottomSheet(
      backgroundColor: ColorName.light,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          controller: ScrollController(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: child,
          ),
        );
      },
    );
  }

  void _updateTicketCounts(int adultCount, int childCount, int infantCount) {
    setState(() {
      _adultCount = adultCount;
      _childCount = childCount;
      _infantCount = infantCount;
    });
  }

  Future<void> _selectDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        pickedDate;
      });
    }
  }

  String _formatDate(DateTime? date) {
    if (date == null) return 'Select Date';
    return DateFormat('EEE, dd MMM yyyy', 'id_ID').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text('Tiket'),
      ),
      body: Stack(
        children: [
          Widgetappbar(
            image: 'assets/icons/mapbase.png',
          ),
          Column(
            children: [
              SizedBox(height: 25),
              CustomContainerCard(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                if (isSatuArah) toggleSelection();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: !isSatuArah
                                    ? ColorName.yellowColor
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Transform.rotate(
                                    angle: 1.57,
                                    child: Icon(
                                      Icons.airplanemode_on,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  // Expanded(
                                  //   child: Center(
                                  //     child: Text(
                                  //       'Penerbangan',
                                  //       style: CustomTextStyles.textNominal,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 16.0),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                if (!isSatuArah) toggleSelection();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isSatuArah
                                    ? ColorName.yellowColor
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.train,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 5),
                                  // Text(
                                  //   'Kereta',
                                  //   style: CustomTextStyles.titleProfil,
                                  // ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 16.0),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                if (!isSatuArah) toggleSelection();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isSatuArah
                                    ? ColorName.yellowColor
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'asstes/icons/big-ship.png',
                                    width: 20,
                                  ),
                                  SizedBox(width: 5),
                                  // Text(
                                  //   'Kereta',
                                  //   style: CustomTextStyles.titleProfil,
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          // padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.blueGrey.shade200),
                          ),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          PencarianKeberangkatan(
                                              title: 'Pilih Keberangkatan'),
                                    ),
                                  );
                                },
                                child: _buildFormField(
                                  context,
                                  'Dari',
                                  'Jakarta',
                                  Icons.flight_land_outlined,
                                  Colors.transparent,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Divider(),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          PencarianKeberangkatan(
                                              title: 'Pilih Tujuan'),
                                    ),
                                  );
                                },
                                child: _buildFormField(
                                  context,
                                  'ke',
                                  'Makassar',
                                  Icons.flight_takeoff,
                                  Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                child: _buildFormField(
                                  context,
                                  'Tanggal Pergi',
                                  '${_formatDate(_selectedDate)}',
                                  Icons.date_range_rounded,
                                  Colors.blueGrey.shade200,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Column(
                              children: [
                                Text(
                                  'Pulang - Pergi',
                                  style: CustomTextStyles.textNominal,
                                ),
                                Switch(
                                  value: _isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      _isSwitched = value;
                                    });
                                  },
                                  activeTrackColor: Colors.green,
                                  activeColor: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      if (_isSwitched == true)
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 15),
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
                            child: _buildFormField(
                              context,
                              'Tanggal Pulang',
                              '${_formatDate(_selectedReturnDate)}',
                              Icons.date_range_rounded,
                              Colors.blueGrey.shade200,
                            ),
                          ),
                        )
                      else
                        Container(),
                      InkWell(
                        onTap: () => _onFieldTap(
                          context: context,
                          child: TicketSelectionBottomSheet(
                            onCountsUpdated: _updateTicketCounts,
                            adultCount: _adultCount,
                            childCount: _childCount,
                            infantCount: _infantCount,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: _buildFormField(
                            context,
                            'Dewasa, Anak atau Bayi',
                            '$_adultCount Dewasa, $_childCount Anak, $_infantCount Bayi',
                            Icons.group,
                            Colors.blueGrey.shade200,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      InkWell(
                        onTap: () {
                          _onFieldTap(
                            context: context,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Text(
                                    'Kelas Kursi',
                                    style: CustomTextStyles.titleShowModal,
                                  ),
                                ),
                                Divider(),
                                _buildClassOption('Ekonomi'),
                                Divider(),
                                _buildClassOption('Premium Ekonomi'),
                                Divider(),
                                _buildClassOption('Bisnis'),
                                Divider(),
                                _buildClassOption('First Class'),
                              ],
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: _buildFormField(
                            context,
                            'Kelas Kursi',
                            '${_selectedClass}',
                            Icons.flight_class_rounded,
                            Colors.blueGrey.shade200,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: ButtonCustom.filled(
                          width: double.infinity,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FlightTicketWidget(),
                              ),
                            );
                          },
                          label: 'Cari',
                          color: ColorName.yellowColor,
                          textColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                color: Colors.blueGrey.shade200,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFormField(BuildContext context, String label, String value,
      IconData icon, Color color) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color),
      ),
      child: Row(
        children: [
          SizedBox(width: 10),
          Icon(icon, color: Colors.grey.shade700),
          SizedBox(width: 10),
          Container(
            width: 1,
            height: 30,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(horizontal: 10),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Text(
                value,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildClassOption(String className) {
    return ListTile(
      title: Text(
        className,
        style: CustomTextStyles.poppins(
          size: 17,
          fontWeight: FontWeight.w500,
          color: _selectedClass == className ? Colors.green : Colors.black,
        ),
      ),
      trailing: _selectedClass == className
          ? Icon(Icons.check, color: Colors.green)
          : null,
      onTap: () {
        setState(() {
          _selectedClass = className;
        });
        Navigator.pop(context, className);
      },
    );
  }
}
