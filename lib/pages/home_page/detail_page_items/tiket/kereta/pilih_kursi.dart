// import 'package:flutter/material.dart';
// import 'package:oepay/common/constant/colors.dart';

// class PilihKursiScreen extends StatefulWidget {
//   const PilihKursiScreen({Key? key}) : super(key: key);

//   @override
//   State<PilihKursiScreen> createState() => _PilihKursiScreenState();
// }

// class _PilihKursiScreenState extends State<PilihKursiScreen> {
//   final List<List<bool>> _seats = [
//     [false, false, false, false],
//     [false, false, false, false],
//     [false, false, false, false],
//     [false, false, false, false],
//     [false, false, false, false],
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorName.light,
//       appBar: AppBar(
//         backgroundColor: ColorName.yellowColor,
//         title: const Text('Pilih Kursi Keberangkatan'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Bandung (BD) > Pasar Senen (PSE)',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 16.0),
//             const Text(
//               'Rincian Kursi Penumpang',
//               style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 8.0),
//             const Text('Tuan Zulkiplih'),
//             const SizedBox(height: 8.0),
//             const Text('Nyonya Afni'),
//             const SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 _SeatStatusWidget(
//                   label: 'Aktif',
//                   color: Colors.yellow,
//                 ),
//                 _SeatStatusWidget(
//                   label: 'Dipilih',
//                   color: Colors.amber,
//                 ),
//                 _SeatStatusWidget(
//                   label: 'Tersedia',
//                   color: Colors.white,
//                 ),
//                 _SeatStatusWidget(
//                   label: 'Terisi',
//                   color: Colors.grey,
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16.0),
//             Expanded(
//               child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 4,
//                   crossAxisSpacing: 8.0,
//                   mainAxisSpacing: 8.0,
//                 ),
//                 itemCount: _seats.length * _seats[0].length,
//                 itemBuilder: (context, index) {
//                   final row = index ~/ _seats[0].length;
//                   final col = index % _seats[0].length;
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _seats[row][col] = !_seats[row][col];
//                       });
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.grey,
//                           width: 1.0,
//                         ),
//                         color: _seats[row][col] ? Colors.amber : Colors.white,
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//                       alignment: Alignment.center,
//                       child: Text(
//                         (row + 1).toString() +
//                             (col == 0
//                                 ? 'A'
//                                 : (col == 1 ? 'B' : (col == 2 ? 'C' : 'D'))),
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                           color: _seats[row][col] ? Colors.white : Colors.black,
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () {
//                 // TODO: Handle payment
//               },
//               child: const Text('Bayar Sekarang'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _SeatStatusWidget extends StatelessWidget {
//   final String label;
//   final Color color;

//   const _SeatStatusWidget({
//     Key? key,
//     required this.label,
//     required this.color,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           width: 20.0,
//           height: 20.0,
//           decoration: BoxDecoration(
//             color: color,
//             shape: BoxShape.circle,
//           ),
//         ),
//         const SizedBox(width: 8.0),
//         Text(label),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(TrainSeatSelectionApp());
// }

// class TrainSeatSelectionApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.yellow),
//       home: TrainSeatSelectionScreen(),
//     );
//   }
// }

// class TrainSeatSelectionScreen extends StatefulWidget {
//   @override
//   _TrainSeatSelectionScreenState createState() =>
//       _TrainSeatSelectionScreenState();
// }

// class _TrainSeatSelectionScreenState extends State<TrainSeatSelectionScreen> {
//   String? selectedPassenger;
//   Map<String, String> passengerSeats = {
//     "Tuan Zulkiplil": "",
//     "Nyonya Afni": ""
//   };

//   final int rows = 5;
//   final int columns = 4;
//   List<List<String>> seats = List.generate(5, (_) => List.filled(4, ''));
//   List<String> reservedSeats = ['1A', '1B', '2C'];

//   @override
//   void initState() {
//     super.initState();
//     _autoAssignSeats();
//   }

//   void _autoAssignSeats() {
//     int seatNumber = 1;
//     for (int row = 0; row < rows; row++) {
//       for (int col = 0; col < columns; col++) {
//         String seat = '${row + 1}${String.fromCharCode(65 + col)}';
//         if (!reservedSeats.contains(seat)) {
//           passengerSeats.forEach((passenger, assignedSeat) {
//             if (assignedSeat.isEmpty) {
//               passengerSeats[passenger] = seat;
//               seats[row][col] = passenger;
//             }
//           });
//           seatNumber++;
//         }
//       }
//     }
//     setState(() {});
//   }

//   void _selectSeat(String seat, int row, int col) {
//     if (selectedPassenger == null) return;
//     if (reservedSeats.contains(seat)) return;

//     setState(() {
//       String previousSeat = passengerSeats[selectedPassenger!]!;
//       if (previousSeat.isNotEmpty) {
//         var prevRow = int.parse(previousSeat[0]) - 1;
//         var prevCol = previousSeat[1].codeUnitAt(0) - 65;
//         seats[prevRow][prevCol] = '';
//       }

//       passengerSeats[selectedPassenger!] = seat;
//       seats[row][col] = selectedPassenger!;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pilih Kursi Keberangkatan'),
//       ),
//       body: Column(
//         children: [
//           ListTile(
//             leading: Icon(Icons.train),
//             title: Text('Bandung (BD) > Pasar Senen (PSE)'),
//           ),
//           ListTile(
//             title: Text('Rincian Kursi Penumpang'),
//             trailing: DropdownButton(
//               value: selectedPassenger,
//               hint: Text('Pilih Penumpang'),
//               items: passengerSeats.keys.map((name) {
//                 return DropdownMenuItem(
//                   value: name,
//                   child: Text(name),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   selectedPassenger = value as String?;
//                 });
//               },
//             ),
//           ),
//           Expanded(
//             child: GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: columns,
//                 childAspectRatio: 1.0,
//               ),
//               itemCount: rows * columns,
//               itemBuilder: (context, index) {
//                 int row = index ~/ columns;
//                 int col = index % columns;
//                 String seat = '${row + 1}${String.fromCharCode(65 + col)}';

//                 Color seatColor;
//                 if (reservedSeats.contains(seat)) {
//                   seatColor = Colors.grey;
//                 } else if (passengerSeats.containsValue(seat)) {
//                   seatColor = Colors.yellow;
//                 } else {
//                   seatColor = Colors.white;
//                 }

//                 return GestureDetector(
//                   onTap: () => _selectSeat(seat, row, col),
//                   child: Container(
//                     margin: EdgeInsets.all(4.0),
//                     decoration: BoxDecoration(
//                       color: seatColor,
//                       border: Border.all(
//                         color: passengerSeats[selectedPassenger] == seat
//                             ? Colors.yellow
//                             : Colors.black,
//                       ),
//                     ),
//                     child: Center(child: Text(seat)),
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: ElevatedButton(
//               onPressed: () {},
//               child: Text('Bayar Sekarang'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';
import '../../penarikan/bca/konfirmasi_penarikan_otp.dart';
import 'hasil_transaksi_tiket_kereta.dart';

class PilihKursi extends StatefulWidget {
  const PilihKursi({super.key});

  @override
  _PilihKursiState createState() => _PilihKursiState();
}

class _PilihKursiState extends State<PilihKursi> {
  String? selectedPassenger;
  Map<String, String> passengerSeats = {
    "Tuan Zulkiplil": "",
    "Nyonya Afni": ""
  };

  final int rows = 5;
  final int columns = 4;
  List<List<String>> seats = List.generate(5, (_) => List.filled(4, ''));
  List<String> reservedSeats = ['1A', '1B', '2C'];

  @override
  void initState() {
    super.initState();
    _autoAssignSeats();
  }

  void _autoAssignSeats() {
    int seatNumber = 1;
    for (int row = 0; row < rows; row++) {
      for (int col = 0; col < columns; col++) {
        String seat = '${row + 1}${String.fromCharCode(65 + col)}';
        if (!reservedSeats.contains(seat)) {
          passengerSeats.forEach((passenger, assignedSeat) {
            if (assignedSeat.isEmpty) {
              passengerSeats[passenger] = seat;
              seats[row][col] = passenger;
            }
          });
          seatNumber++;
        }
      }
    }
    setState(() {});
  }

  void _selectSeat(String seat, int row, int col) {
    if (selectedPassenger == null) return;
    if (reservedSeats.contains(seat)) return;

    setState(() {
      String previousSeat = passengerSeats[selectedPassenger!]!;
      if (previousSeat.isNotEmpty) {
        var prevRow = int.parse(previousSeat[0]) - 1;
        var prevCol = previousSeat[1].codeUnitAt(0) - 65;
        seats[prevRow][prevCol] = '';
      }

      passengerSeats[selectedPassenger!] = seat;
      seats[row][col] = selectedPassenger!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: const Text('Pilih Kursi Keberangkatan'),
      ),
      body: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.train),
            title: Text('Bandung (BD) > Pasar Senen (PSE)'),
          ),
          ListTile(
            title: const Text('Rincian Kursi Penumpang'),
            trailing: DropdownButton(
              value: selectedPassenger,
              hint: const Text('Pilih Penumpang'),
              items: passengerSeats.keys.map((name) {
                return DropdownMenuItem(
                  value: name,
                  child: Text(name),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedPassenger = value;
                });
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                childAspectRatio: 1.0,
              ),
              itemCount: rows * columns,
              itemBuilder: (context, index) {
                int row = index ~/ columns;
                int col = index % columns;
                String seat = '${row + 1}${String.fromCharCode(65 + col)}';

                bool isReserved = reservedSeats.contains(seat);
                bool isSelected = passengerSeats[selectedPassenger] == seat;
                bool isOccupied = passengerSeats.containsValue(seat);

                Color seatColor = isReserved
                    ? Colors.grey
                    : isOccupied || isSelected
                        ? Colors.yellow
                        : Colors.white;

                return GestureDetector(
                  onTap: () => _selectSeat(seat, row, col),
                  child: Container(
                    margin: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: seatColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: isSelected ? Colors.yellow : Colors.black,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        isReserved || isOccupied || isSelected ? seat : '',
                        style: TextStyle(
                          color: isReserved ? Colors.black54 : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: ButtonCustom.filled(
              width: double.infinity,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Konfirmasipenarikanotp(
                      onConfirmation: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HasiltransaksitiketKereta(),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
              label: 'Lanjut',
              color: ColorName.yellowColor,
              textColor: Colors.black,
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
