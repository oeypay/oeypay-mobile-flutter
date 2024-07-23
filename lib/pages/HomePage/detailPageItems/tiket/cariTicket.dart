import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/showModalPenerbangan.dart';

class FlightTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.only(left: 15, right: 15, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/icons/garuda.png',
                width: 50,
              ),
              Row(
                children: [
                  Text(
                    'Rp 900.000 ',
                    style: CustomTextStyles.poppins(
                      size: 18,
                      color: Colors.orange,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text('/Org'),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jakarta, CGK',
                    style: CustomTextStyles.titleProfil,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'CGK',
                    style: CustomTextStyles.textVirtualAccount,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '12.00 AM',
                    style: CustomTextStyles.titleProfil,
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomPaint(
                    painter: DashedLinePainter(),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.grey,
                          ),
                          Column(
                            children: [
                              Text(
                                '7j 30m',
                                style: CustomTextStyles.titlesection,
                              ),
                              SizedBox(height: 10),
                              Image.asset(
                                'assets/icons/pesawat.png',
                                width: 30,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Langsung',
                                style: CustomTextStyles.titlesection,
                              ),
                            ],
                          ),
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Surabaya, SUB',
                    style: CustomTextStyles.titleProfil,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'SUB',
                    style: CustomTextStyles.textVirtualAccount,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '05.00 AM',
                    style: CustomTextStyles.titleProfil,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    double dashWidth = 5.0;
    double dashSpace = 5.0;
    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, size.height / 2),
          Offset(startX + dashWidth, size.height / 2), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class FlightTicketWidget extends StatelessWidget {
  const FlightTicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text('Jakarta > Makassar'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.blueGrey.withOpacity(0.2),
                blurRadius: 1,
                offset: Offset(0, 2),
              ),
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: const [
                    Icon(Icons.calendar_today, color: Colors.black),
                    SizedBox(width: 5),
                    Text(
                      'Sab, 8 Jul 2024',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.sort, color: Colors.black),
                    SizedBox(width: 5),
                    Text(
                      'Urutkan',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.filter_alt, color: Colors.black),
                    SizedBox(width: 5),
                    Text(
                      'Filter',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          GestureDetector(
              onTap: () => showBarModalBottomSheet(
                    expand: false,
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) => ShowModalPenerbangan(),
                  ),
              child: FlightTicket()),
          FlightTicket(),
        ],
      ),
      // bottomSheet: ShowModalPenerbangan(),
    );
  }
}
