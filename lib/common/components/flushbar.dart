import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oepay/common/constant/colors.dart';

showSnackBar(context, {String? msg, Color? bgColor, msgColor}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(msg ?? '-',
          style: TextStyle(
            color: msgColor ?? ColorName.white,
          )),
      backgroundColor: bgColor ?? Colors.redAccent,
    ),
  );
}

showInfo(context) {
  showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Gagal !'),
          content: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Fitur aplikasi belum tersedia, silahkan cek secara berkala",
              textAlign: TextAlign.center,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}

infoDelete(context, {required Null Function() pressDelete}) {
  showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Hapus data',
            textAlign: TextAlign.center,
          ),
          content: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Yakin ingin mengepus data ini ?",
              textAlign: TextAlign.center,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Batal',
                style: TextStyle(color: ColorName.grey),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              onPressed: pressDelete,
              child: const Text(
                'hapus',
                style: TextStyle(color: ColorName.black),
              ),
            ),
          ],
        );
      });
}

showAlert(BuildContext context, String msg) {
  if (msg.isNotEmpty) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      borderRadius: BorderRadius.circular(10),
      backgroundColor: ColorName.grey100.withOpacity(.6),
      titleColor: Colors.black,
      icon: const Icon(
        FontAwesomeIcons.circleInfo,
        color: ColorName.red,
        size: 30,
      ),
      title: 'Opps.!',
      message: msg,
      messageColor: Colors.black,
      duration: const Duration(seconds: 7),
    ).show(context);
  }
}

showWarning(BuildContext context, String msg) {
  Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    margin: const EdgeInsets.all(10.0),
    borderRadius: BorderRadius.circular(10),
    backgroundColor: const Color(0xfffff3cd),
    titleColor: const Color(0xff856404),
    icon: const Icon(
      Icons.dangerous,
      color: Color(0xff856404),
      size: 30,
    ),
    title: 'Yay!',
    message: msg,
    messageColor: const Color(0xff856404),
    duration: const Duration(seconds: 3),
  ).show(context);
}

showSuccess(BuildContext context, String msg) {
  Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    margin: const EdgeInsets.all(10.0),
    borderRadius: BorderRadius.circular(10),
    backgroundColor: Colors.white,
    titleColor: Colors.black,
    icon: const Icon(
      Icons.check_circle,
      color: ColorName.green,
      size: 30,
    ),
    title: 'Yay!',
    message: msg,
    messageColor: Colors.black,
    duration: const Duration(seconds: 3),
  ).show(context);
}

showSnackbar(BuildContext context, String? msg) {
  // Navigator.of(context).pop();
  // Navigator.pop(context);
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(msg ?? '-'),
    ),
  );
}
