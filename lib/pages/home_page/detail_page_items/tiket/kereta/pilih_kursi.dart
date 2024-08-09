import 'package:flutter/material.dart';
import 'package:oepay/common/components/space.dart';
import 'package:oepay/common/constant/style_text.dart';
import 'package:oepay/pages/home_page/detail_page_items/tiket/kereta/detail_pesanan_tiket_kereta_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';
import '../../penarikan/bca/konfirmasi_penarikan_otp.dart';
import 'hasil_transaksi_tiket_kereta.dart';

class PilihKursi extends StatefulWidget {
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
  final PageController _pageController = PageController();
  int _currentPage = 0;

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text('Pilih Kursi Keberangkatan'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(
              Icons.train,
              color: Color.fromARGB(255, 197, 158, 2),
            ),
            title: Text(
              'Bandung (BD) > Pasar Senen (PSE)',
              style: CustomTextStyles.titlesection,
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Rincian Kursi Penumpang',
              style: CustomTextStyles.titlesection,
            ),
            trailing: DropdownButton(
              value: selectedPassenger,
              hint: Text(
                'EKO - 1',
                style: CustomTextStyles.titleItem,
              ),
              items: passengerSeats.keys.map((name) {
                return DropdownMenuItem(
                  value: name,
                  child: Text(
                    name,
                    style: CustomTextStyles.titleItem,
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedPassenger = value as String?;
                });
              },
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedPassenger;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tuan Zulkifli',
                      style: CustomTextStyles.titleItem,
                    ),
                    Text(
                      'EKO - 1(3A)',
                      style: CustomTextStyles.poppins(
                        size: 12,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Nyoya Afni',
              style: CustomTextStyles.titleItem,
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                statusChek(
                    ColorName.yellowColor, 'Aktif', Colors.grey.shade400),
                statusChek(Colors.white, 'Tersedia', Colors.grey.shade400),
                statusChek(
                    ColorName.yellowColor, 'Dipilih', ColorName.yellowColor),
                statusChek(
                    Colors.grey.shade400, 'Terisi', Colors.grey.shade400),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 38, right: 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "A",
                  style: CustomTextStyles.titleProfil,
                ),
                Text(
                  "B",
                  style: CustomTextStyles.titleProfil,
                ),
                SizedBox(width: 20),
                Text(
                  "C",
                  style: CustomTextStyles.titleProfil,
                ),
                Text(
                  "D",
                  style: CustomTextStyles.titleProfil,
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: List.generate(3, (pageIndex) {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        columns + 1, // Add extra column for row numbers
                    childAspectRatio: 1.0,
                  ),
                  itemCount: rows * (columns + 1),
                  itemBuilder: (context, index) {
                    int row = index ~/ (columns + 1);
                    int col = index % (columns + 1);

                    if (col == 2) {
                      return Center(
                        child: Text(
                          '${row + 1}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }

                    if (col > 2)
                      col--; // Adjust column index to skip the row number column

                    String seat = '${row + 1}${String.fromCharCode(65 + col)}';

                    bool isReserved = reservedSeats.contains(seat);
                    bool isSelected = passengerSeats[selectedPassenger] == seat;
                    bool isOccupied = passengerSeats.containsValue(seat);

                    Color seatColor = isReserved
                        ? Colors.grey.shade400
                        : isOccupied || isSelected
                            ? ColorName.yellowColor
                            : Colors.white;

                    return GestureDetector(
                      onTap: () => _selectSeat(seat, row, col),
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: seatColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: isSelected
                                ? ColorName.yellowColor
                                : Colors.grey.shade400,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            isReserved || isOccupied || isSelected ? seat : '',
                            style: CustomTextStyles.poppins(
                              size: 16,
                              color: isReserved ? Colors.black54 : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  activeDotColor: ColorName.yellowColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: ButtonCustom.filled(
              width: double.infinity,
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Konfirmasipenarikanotp(
                //       onConfirmation: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => HasiltransaksitiketKereta(),
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                // );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPesananTiketKeretaPage(),
                  ),
                );
              },
              label: 'Lanjut',
              color: ColorName.yellowColor,
              textColor: Colors.black,
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget statusChek(Color? color, String? title, Color? cBorder) {
    return Column(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: cBorder!),
          ),
        ),
        Text(
          title!,
          style: CustomTextStyles.poppins(size: 12, color: Colors.black),
        ),
      ],
    );
  }
}
