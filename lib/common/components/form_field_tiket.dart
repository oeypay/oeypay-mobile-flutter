import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BuildFormFieldTiket extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;
  const BuildFormFieldTiket({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
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
}

class DatePickerWidget extends StatelessWidget {
  final DateTime? selectedDate;
  final String label;
  final Function(DateTime?) onDateSelected;

  const DatePickerWidget({
    super.key,
    required this.selectedDate,
    required this.label,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2100),
        );
        onDateSelected(pickedDate);
      },
      child: BuildFormFieldTiket(
        label: label,
        value: _formatDate(selectedDate),
        icon: Icons.date_range_rounded,
        color: Colors.blueGrey.shade200,
      ),
    );
  }

  String _formatDate(DateTime? date) {
    if (date == null) return 'Buat Tanggal';
    return DateFormat('EEE, dd MMM yyyy', 'id_ID').format(date);
  }
}
