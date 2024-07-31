import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:oepay/common/components/FormFieldTiket.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/showCustomTiketPesawat.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/kereta/cari_stasiun_kereta.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/kereta/cari_tiket_kereta.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/pesawat/cari_ticket_pesawat.dart';

class TiketKereta extends StatefulWidget {
  const TiketKereta({super.key});

  @override
  State<TiketKereta> createState() => _TiketKeretaState();
}

class _TiketKeretaState extends State<TiketKereta> {
  bool isSatuArah = false;
  bool _isSwitched = false;
  int _adultCount = 0;
  int _infantCount = 0;
  int _childCount = 0;

  DateTime? _selectedDate;
  DateTime? _selectedReturnDate;

  void toggleSelection() {
    setState(() {
      isSatuArah = !isSatuArah;
    });
  }

  void _onDateSelected(DateTime? date) {
    setState(() {
      _selectedDate = date;
    });
  }

  void _onReturnDateSelected(DateTime? date) {
    setState(() {
      _selectedReturnDate = date;
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
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
                              builder: (context) => PencarianStasiun(
                                  title: 'Pilih Keberangkatan'),
                            ),
                          );
                        },
                        child: BuildFormFieldTiket(
                          label: 'Dari',
                          value: 'Makassar',
                          icon: Icons.train,
                          color: Colors.transparent,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PencarianStasiun(title: 'Pilih Tujuan'),
                            ),
                          );
                        },
                        child: BuildFormFieldTiket(
                          label: 'Ke',
                          value: 'Bogor',
                          icon: Icons.train,
                          color: Colors.transparent,
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
                      child: DatePickerWidget(
                        selectedDate: _selectedDate,
                        label: 'Tanggal Pergi',
                        onDateSelected: _onDateSelected,
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
                              if (!_isSwitched) {
                                _selectedReturnDate = null;
                              }
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
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                    child: DatePickerWidget(
                      selectedDate: _selectedReturnDate,
                      label: 'Tanggal Pulang',
                      onDateSelected: _onReturnDateSelected,
                    ))
              else
                Container(),
              InkWell(
                onTap: () => _onFieldTap(
                  context: context,
                  child: TicketSelectionBottomSheet(
                    showChildOption: false,
                    showMessage: false,
                    onCountsUpdated: _updateTicketCounts,
                    adultCount: _adultCount,
                    childCount: _childCount,
                    infantCount: _infantCount,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: BuildFormFieldTiket(
                    label: 'Dewasa, Anak atau Bayi',
                    value: '$_adultCount Dewasa, $_infantCount Bayi',
                    icon: Icons.group,
                    color: Colors.blueGrey.shade200,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ButtonCustom.filled(
                  width: double.infinity,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CariTiketKereta(),
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
      ],
    );
  }
}
