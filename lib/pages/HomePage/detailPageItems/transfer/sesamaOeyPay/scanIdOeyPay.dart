import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanIdOeypay extends StatefulWidget {
  const ScanIdOeypay({super.key});

  @override
  State<ScanIdOeypay> createState() => _ScanIdOeypayState();
}

class _ScanIdOeypayState extends State<ScanIdOeypay> {
  final GlobalKey qrKey = GlobalKey(debugLabel: "QR");
  Barcode? result;
  QRViewController? controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text('Scan Id OeyPay'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: QRView(key: qrKey, onQRViewCreated: _onQRViewCreated),
          ),
          Expanded(
            flex: 1,
            child: (result != null)
                ? Text('QRCode Data: ${result!.code}')
                : Text('Scan Kode'),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scandata) {
      setState(() {
        result = scandata;
      });
    });
  }
}
