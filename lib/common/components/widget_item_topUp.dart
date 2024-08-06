import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Widgetitemtopup extends StatelessWidget {
  final Map<String, dynamic> item;

  const Widgetitemtopup({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (item['action'] == 'show') {
          showModalBottomSheet(
              context: context, builder: (context) => item['page']);
        } else if (item['action'] == 'page') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => item['page'] as Widget,
            ),
          );
        }
      },
      child: Container(
        height: 72,
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey.shade100),
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(12),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.blueGrey.withOpacity(0.2),
          //     blurRadius: 2,
          //     offset: Offset(1, 1),
          //   ),
          //   BoxShadow(
          //     color: Colors.blueGrey.withOpacity(0.2),
          //     blurRadius: 2,
          //     offset: Offset(-1, -1),
          //   ),
          // ],
        ),
        child: Row(
          children: [
            item['icon'] as Widget,
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                item['title'] as String,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (item['tag'] != '')
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  item['tag'] as String,
                  style: TextStyle(
                    color: (item['tag'] as String) == 'NEW'
                        ? Colors.white
                        : (item['tag'] as String) == 'Instan'
                            ? Colors.black
                            : Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            const SizedBox(width: 16),
            const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
