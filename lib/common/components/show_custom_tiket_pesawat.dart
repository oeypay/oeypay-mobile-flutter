import 'package:flutter/material.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/widget_alur_topup.dart';
import 'package:oepay/common/constant/colors.dart';
import '../constant/styleText.dart';

class TicketSelectionBottomSheet extends StatefulWidget {
  final int adultCount;
  final int childCount;
  final int infantCount;
  final Function(int, int, int) onCountsUpdated;
  final bool showChildOption; // Tambahkan parameter ini
  final bool showMessage; // Tambahkan parameter ini

  const TicketSelectionBottomSheet({super.key, 
    this.adultCount = 0,
    this.childCount = 0,
    this.infantCount = 0,
    required this.onCountsUpdated,
    this.showChildOption = true, // Default true
    this.showMessage = true, // Default true
  });

  @override
  _TicketSelectionBottomSheetState createState() =>
      _TicketSelectionBottomSheetState();
}

class _TicketSelectionBottomSheetState
    extends State<TicketSelectionBottomSheet> {
  late int _adultCount;
  late int _childCount;
  late int _infantCount;

  @override
  void initState() {
    super.initState();
    _adultCount = widget.adultCount;
    _childCount = widget.childCount;
    _infantCount = widget.infantCount;
  }

  void _increment(String type) {
    setState(() {
      if (type == 'adult') {
        _adultCount++;
      } else if (type == 'child') {
        _childCount++;
      } else if (type == 'infant') {
        _infantCount++;
      }
    });
  }

  void _decrement(String type) {
    setState(() {
      if (type == 'adult' && _adultCount > 0) {
        _adultCount--;
      } else if (type == 'child' && _childCount > 0) {
        _childCount--;
      } else if (type == 'infant' && _infantCount > 0) {
        _infantCount--;
      }
    });
  }

  void _submit() {
    widget.onCountsUpdated(_adultCount, _childCount, _infantCount);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              'Pilih Jumlah Tiket',
              style: CustomTextStyles.titleShowModal,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(),
          ),
          _buildTicketOption(
              'Dewasa', ' (Usia 12 thn Keatas)', _adultCount, 'adult'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(),
          ),
          if (widget.showChildOption) // Kondisi untuk menampilkan bagian Anak
            _buildTicketOption(
                'Anak', ' (Usia 2 - 11 thn)', _childCount, 'child'),
          if (widget.showChildOption) // Kondisi untuk menampilkan Divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(),
            ),
          _buildTicketOption(
              'Bayi', ' (Di bawah 2 thn)', _infantCount, 'infant'),
          const SizedBox(height: 10),
          if (widget
              .showMessage) // Kondisi untuk menampilkan CustomMessageContainer
            const CustomMessageContainer(
              message:
                  'Bayi harus berusia minimal 6 minggu untuk naik ke pesawat dan harus duduk di pangkuan orang dewasa atau menempati kursi bayi',
            ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ButtonCustom.filled(
              width: double.infinity,
              onPressed: _submit,
              label: 'Konfirmasi',
              color: ColorName.yellowColor,
              textColor: Colors.black,
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget _buildTicketOption(String label, String usia, int count, String type) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Text(
            label,
            style: CustomTextStyles.poppins(
              size: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            usia,
            style: CustomTextStyles.poppins(
              size: 13,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () => _decrement(type),
              ),
              Text(
                '$count',
                style: const TextStyle(color: Colors.green),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () => _increment(type),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
