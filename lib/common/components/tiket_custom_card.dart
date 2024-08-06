import 'package:flutter/material.dart';
import 'package:oepay/common/constant/styleText.dart';

class TicketCard extends StatelessWidget {
  final String? logoPath;
  final String? namaStasiun;
  final String price;
  final String departureStation;
  final String departureCode;
  final String departureTime;
  final String duration;
  final String arrivalStation;
  final String arrivalCode;
  final String arrivalTime;
  final String vehicleIconPath;

  const TicketCard({
    super.key,
    this.logoPath,
    this.namaStasiun,
    required this.price,
    required this.departureStation,
    required this.departureCode,
    required this.departureTime,
    required this.duration,
    required this.arrivalStation,
    required this.arrivalCode,
    required this.arrivalTime,
    required this.vehicleIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.shade300.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
          BoxShadow(
            color: Colors.blueGrey.shade300.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(-2, -2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (logoPath != null)
                Image.asset(
                  logoPath!,
                  width: 50,
                )
              else
                Expanded(
                  child: Text(
                    namaStasiun!,
                    style: CustomTextStyles.titleProfil,
                  ),
                ),
              Row(
                children: [
                  Text(
                    price,
                    style: CustomTextStyles.poppins(
                      size: 18,
                      color: Colors.orange,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text('/Org'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      departureStation,
                      style: CustomTextStyles.titleProfil,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      departureCode,
                      style: CustomTextStyles.textVirtualAccount,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      departureTime,
                      style: CustomTextStyles.titleProfil,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: CustomPaint(
                    painter: DashedLinePainter(),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.grey.shade300,
                          ),
                          Column(
                            children: [
                              Text(
                                duration,
                                style: CustomTextStyles.poppins(
                                  size: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Image.asset(
                                vehicleIconPath,
                                width: 30,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Langsung',
                                style: CustomTextStyles.poppins(
                                  size: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          // SizedBox(width: 5),
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.grey.shade300,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      arrivalStation,
                      style: CustomTextStyles.titleProfil,
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      arrivalCode,
                      style: CustomTextStyles.textVirtualAccount,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      arrivalTime,
                      style: CustomTextStyles.titleProfil,
                    ),
                  ],
                ),
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
      ..color = Colors.grey.shade300
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
