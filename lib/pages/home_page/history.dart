import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorName.yellowColor,
        title: const Text('History'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 15, top: 10),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              // border: Border.all(width: 2.0, color: Colors.blueGrey.shade50),
              color: ColorName.light,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(70),
                bottomRight: Radius.circular(70),
              ),
              boxShadow: [
                // Shadow for bottom-right
                BoxShadow(
                  color: Colors.white,
                  // spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(-2, -4),
                ),
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  // spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(2, 4),
                ),
                // Shadow for top-left
              ],
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.monetization_on_outlined,
                  size: 30,
                  color: Colors.teal,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pulsa Telkomsel ',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text('01 Juni 2024 . 20:00 ',
                        style: TextStyle(fontSize: 12)),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Rp.20.500', style: TextStyle(fontSize: 12)),
                    Text(
                      'Berhasil',
                      style: TextStyle(fontSize: 12, color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(width: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
