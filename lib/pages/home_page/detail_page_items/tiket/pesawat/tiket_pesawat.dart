import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:oepay/common/components/form_field_tiket.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/show_custom_tiket_pesawat.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'cari_bandara.dart';
import 'cari_ticket_pesawat.dart';

class TiketPesawat extends StatefulWidget {
  const TiketPesawat({super.key});

  @override
  State<TiketPesawat> createState() => _TiketPesawatState();
}

class _TiketPesawatState extends State<TiketPesawat> {
  bool _isSwitched = false;
  int _adultCount = 0;
  int _childCount = 0;
  int _infantCount = 0;
  String _selectedClass = 'Ekonomi';

  DateTime? _selectedDate;
  DateTime? _selectedReturnDate;

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
            decoration: const BoxDecoration(
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

  void _updateTicketCounts(int adultCount, int childCount, int infantCount) {
    setState(() {
      _adultCount = adultCount;
      _childCount = childCount;
      _infantCount = infantCount;
    });
  }

  String _formatDate(DateTime? date) {
    if (date == null) return 'Select Date';
    return DateFormat('EEE, dd MMM yyyy', 'id_ID').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
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
                              builder: (context) => const PencarianKeberangkatan(
                                  title: 'Pilih Keberangkatan'),
                            ),
                          );
                        },
                        child: const BuildFormFieldTiket(
                          label: 'Dari',
                          value: 'Jakarta',
                          icon: Icons.flight_land_outlined,
                          color: Colors.transparent,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const PencarianKeberangkatan(title: 'Pilih Tujuan'),
                            ),
                          );
                        },
                        child: const BuildFormFieldTiket(
                          label: 'Ke',
                          value: 'Makassar',
                          icon: Icons.flight_takeoff,
                          color: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Expanded(
                    //   child: InkWell(
                    //     onTap: () async {
                    //       DateTime? pickedDate = await showDatePicker(
                    //         context: context,
                    //         initialDate: DateTime.now(),
                    //         firstDate: DateTime.now(),
                    //         lastDate: DateTime(2100),
                    //       );
                    //       if (pickedDate != null) {
                    //         setState(() {
                    //           _selectedDate = pickedDate;
                    //         });
                    //       }
                    //     },
                    //     child: BuildFormFieldTiket(
                    //       label: 'Tanggal Pergi',
                    //       value: '${_formatDate(_selectedDate)}',
                    //       icon: Icons.date_range_rounded,
                    //       color: Colors.blueGrey.shade200,
                    //     ),
                    //   ),
                    // ),
                    Expanded(
                      child: DatePickerWidget(
                        selectedDate: _selectedDate,
                        label: 'Tanggal Pergi',
                        onDateSelected: _onDateSelected,
                      ),
                    ),
                    const SizedBox(width: 5),
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
              const SizedBox(height: 15),
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
                    value:
                        '$_adultCount Dewasa, $_childCount Anak, $_infantCount Bayi',
                    icon: Icons.group,
                    color: Colors.blueGrey.shade200,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  _onFieldTap(
                    context: context,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Text(
                            'Kelas Kursi',
                            style: CustomTextStyles.titleShowModal,
                          ),
                        ),
                        const Divider(),
                        _buildClassOption('Ekonomi'),
                        const Divider(),
                        _buildClassOption('Premium'),
                        const Divider(),
                        _buildClassOption('Bisnis'),
                        const Divider(),
                        _buildClassOption('First Class'),
                      ],
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: BuildFormFieldTiket(
                    label: 'Kelas Kursi',
                    value: _selectedClass,
                    icon: Icons.flight_class_rounded,
                    color: Colors.blueGrey.shade200,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ButtonCustom.filled(
                  width: double.infinity,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FlightTicketWidget(),
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
          ? const Icon(Icons.check, color: Colors.green)
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
