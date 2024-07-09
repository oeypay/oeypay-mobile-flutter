import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/customTextField.dart';
import 'package:oepay/common/components/garisPutus.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/porfilScreen/ProfilePage.dart';

class FlightBookingScreen extends StatefulWidget {
  const FlightBookingScreen({Key? key}) : super(key: key);

  @override
  State<FlightBookingScreen> createState() => _FlightBookingScreenState();
}

class _FlightBookingScreenState extends State<FlightBookingScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isSatuArah = false;

  void toggleSelection() {
    setState(() {
      isSatuArah = !isSatuArah;
    });
  }

  DateTime? _selectedDate;
  DateTime? _selectedReturnDate;
  int _passengerCount = 1;
  String _selectedClass = 'Business';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: const Text('Tiket Penerbangan'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // One-way / Round-trip selection
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
                        child: Text(
                          'Satu Arah',
                          style: TextStyle(
                            color: Colors.black,
                          ),
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
                          backgroundColor:
                              isSatuArah ? ColorName.yellowColor : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'Pulang-Pergi',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),

                if (!isSatuArah)
                  Wrap(
                    spacing: 17.0,
                    runSpacing: 17.0,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey.withOpacity(0.3),
                                blurRadius: 5,
                                offset: Offset(0, 5),
                              )
                            ]),
                        child: Column(
                          children: [
                            // TextFormField(
                            //   decoration: const InputDecoration(
                            //     labelText: 'From',
                            //     prefixIcon: Icon(Icons.flight_takeoff),
                            //   ),
                            //   initialValue: 'Yogyakarta (YIA)',
                            // ),
                            CustomTextFormField(
                              labelText: 'Dari',
                              prefixIcon: Icons.flight_takeoff,
                              initialValue: 'Yogyakarta',
                            ),
                            const SizedBox(height: 16.0),
                            CustomTextFormField(
                              labelText: 'Ke',
                              prefixIcon: Icons.flight_land,
                              initialValue: 'Surabaya',
                            ),
                            const SizedBox(height: 16.0),

                            // Date selection
                            Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () async {
                                      DateTime? pickedDate =
                                          await showDatePicker(
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
                                        labelText: 'Date',
                                        prefixIcon: Icon(Icons.calendar_today),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.yellow),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: Text(
                                        _selectedDate != null
                                            ? '${_selectedDate!.day} ${_selectedDate!.month} ${_selectedDate!.year}'
                                            : 'Select Date',
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
                                      DateTime? pickedDate =
                                          await showDatePicker(
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
                                        labelText: 'Return Date',
                                        prefixIcon: Icon(Icons.calendar_today),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.yellow),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: Text(
                                        _selectedReturnDate != null
                                            ? '${_selectedReturnDate!.day} ${_selectedReturnDate!.month} ${_selectedReturnDate!.year}'
                                            : 'Select Date',
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16.0),

                            // Passenger & Class selection
                            Row(
                              children: [
                                Expanded(
                                  child: InputDecorator(
                                    decoration: InputDecoration(
                                      labelText: 'Penumpang',
                                      prefixIcon: Icon(Icons.people),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: DropdownButton<int>(
                                      isExpanded: true,
                                      value: _passengerCount,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _passengerCount = newValue!;
                                        });
                                      },
                                      items: List.generate(
                                        5,
                                        (index) => DropdownMenuItem<int>(
                                          value: index + 1,
                                          child: Text(
                                            '${index + 1} Penumpang',
                                            style: CustomTextStyles.titleItem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: InputDecorator(
                                    decoration: InputDecoration(
                                      labelText: 'Class',
                                      prefixIcon: Icon(Icons.chair),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: DropdownButton<String>(
                                      isExpanded: true,
                                      value: _selectedClass,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _selectedClass = newValue!;
                                        });
                                      },
                                      items: [
                                        DropdownMenuItem<String>(
                                          value: 'Economy',
                                          child: Text(
                                            'Economy',
                                            style: CustomTextStyles.titleItem,
                                          ),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'Business',
                                          child: Text(
                                            'Business',
                                            style: CustomTextStyles.titleItem,
                                          ),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'First Class',
                                          child: Text(
                                            'First Class',
                                            style: CustomTextStyles.titleItem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40.0),

                            // Search Flight button
                            ButtonCustom.filled(
                                borderRadius: 50,
                                width: double.infinity,
                                onPressed: () {},
                                label: 'Cari Penerbangan',
                                color: ColorName.yellowColor,
                                textColor: Colors.white),
                            const SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                    ],
                  )
                else
                  // Paket Data options
                  Wrap(
                    spacing: 16.0,
                    runSpacing: 16.0,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey.withOpacity(0.3),
                                blurRadius: 5,
                                offset: Offset(0, 5),
                              )
                            ]),
                        child: Column(
                          children: [
                            // TextFormField(
                            //   decoration: const InputDecoration(
                            //     labelText: 'From',
                            //     prefixIcon: Icon(Icons.flight_takeoff),
                            //   ),
                            //   initialValue: 'Yogyakarta (YIA)',
                            // ),
                            CustomTextFormField(
                              labelText: 'Dari',
                              prefixIcon: Icons.flight_takeoff,
                              initialValue: 'Yogyakarta',
                            ),
                            const SizedBox(height: 16.0),
                            CustomTextFormField(
                              labelText: 'Ke',
                              prefixIcon: Icons.flight_land,
                              initialValue: 'Makassar',
                            ),
                            const SizedBox(height: 16.0),

                            // Date selection
                            Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () async {
                                      DateTime? pickedDate =
                                          await showDatePicker(
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
                                        labelText: 'Date',
                                        prefixIcon: Icon(Icons.calendar_today),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.yellow),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: Text(
                                        _selectedDate != null
                                            ? '${_selectedDate!.day} ${_selectedDate!.month} ${_selectedDate!.year}'
                                            : 'Select Date',
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
                                      DateTime? pickedDate =
                                          await showDatePicker(
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
                                        labelText: 'Return Date',
                                        prefixIcon: Icon(Icons.calendar_today),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.yellow),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: Text(
                                        _selectedReturnDate != null
                                            ? '${_selectedReturnDate!.day} ${_selectedReturnDate!.month} ${_selectedReturnDate!.year}'
                                            : 'Select Date',
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16.0),

                            // Passenger & Class selection
                            Row(
                              children: [
                                Expanded(
                                  child: InputDecorator(
                                    decoration: InputDecoration(
                                      labelText: 'Penumpang',
                                      prefixIcon: Icon(Icons.people),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: DropdownButton<int>(
                                      isExpanded: true,
                                      value: _passengerCount,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _passengerCount = newValue!;
                                        });
                                      },
                                      items: List.generate(
                                        5,
                                        (index) => DropdownMenuItem<int>(
                                          value: index + 1,
                                          child: Text(
                                            '${index + 1} Penumpang',
                                            style: CustomTextStyles.titleItem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: InputDecorator(
                                    decoration: InputDecoration(
                                      labelText: 'Class',
                                      prefixIcon: Icon(Icons.chair),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: DropdownButton<String>(
                                      isExpanded: true,
                                      value: _selectedClass,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _selectedClass = newValue!;
                                        });
                                      },
                                      items: [
                                        DropdownMenuItem<String>(
                                          value: 'Economy',
                                          child: Text(
                                            'Economy',
                                            style: CustomTextStyles.titleItem,
                                          ),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'Business',
                                          child: Text(
                                            'Business',
                                            style: CustomTextStyles.titleItem,
                                          ),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'First Class',
                                          child: Text(
                                            'First Class',
                                            style: CustomTextStyles.titleItem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40.0),

                            // Search Flight button
                            ButtonCustom.filled(
                                borderRadius: 50,
                                width: double.infinity,
                                onPressed: () {},
                                label: 'Cari Penerbangan',
                                color: ColorName.yellowColor,
                                textColor: Colors.white),
                            const SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                    ],
                  ),

                // From & To inputs
                // Upcoming Flight section

                // Flight card
                // Container(
                //   decoration: BoxDecoration(
                //     // border: Border.all(
                //     //   color: Colors.grey,
                //     // ),
                //     borderRadius: BorderRadius.circular(8.0),
                //   ),
                //   padding: const EdgeInsets.all(16.0),
                //   child: const Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: const [
                //           Text(
                //             'Surabaya',
                //             style: TextStyle(
                //               fontSize: 16.0,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //           SizedBox(height: 8.0),
                //           Text(
                //             'SBY',
                //             style: TextStyle(
                //               fontSize: 24.0,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //           SizedBox(height: 8.0),
                //           Text('10:00 AM'),
                //         ],
                //       ),
                //       Column(
                //         children: [
                //           Icon(
                //             Icons.flight_takeoff,
                //             size: 30.0,
                //           ),
                //           Dash(
                //             direction: Axis.horizontal,
                //             length: 100,
                //             dashColor: Colors.grey,
                //           )
                //         ],
                //       ),
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: const [
                //           Text(
                //             'Yogyakarta',
                //             style: TextStyle(
                //               fontSize: 16.0,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //           SizedBox(height: 8.0),
                //           Text(
                //             'YIA',
                //             style: TextStyle(
                //               fontSize: 24.0,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //           SizedBox(height: 8.0),
                //           Text('12:30 AM'),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(height: 16.0),

                // See All button
                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: TextButton(
                //     onPressed: () {},
                //     child: const Text('See All'),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
