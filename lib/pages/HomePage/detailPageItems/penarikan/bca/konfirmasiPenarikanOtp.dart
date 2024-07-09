import 'package:flutter/material.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/HomePage/detailPageItems/penarikan/bca/penarikanTunaiBca.dart';

class Konfirmasipenarikanotp extends StatefulWidget {
  final VoidCallback onConfirmation;

  const Konfirmasipenarikanotp({Key? key, required this.onConfirmation})
      : super(key: key);

  @override
  _KonfirmasipenarikanotpState createState() => _KonfirmasipenarikanotpState();
}

class _KonfirmasipenarikanotpState extends State<Konfirmasipenarikanotp> {
  List<int> _passwordDigits = [];
  final List<int> _enteredDigits = [];
  @override
  void initState() {
    super.initState();
    _passwordDigits = [0, 3, 1, 6, 6, 0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: ColorName.light,
        elevation: 0,
      ),
      backgroundColor: ColorName.light,
      body: Container(
        margin: EdgeInsets.only(top: 50, bottom: 50),
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.3,
            fit: BoxFit.cover,
            image: AssetImage('assets/icons/log.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Masukkan Sandi Anda",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _enteredDigits.length,
                (index) => Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: Center(
                    child: Text(
                      _enteredDigits[index].toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                6 - _enteredDigits.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      _enteredDigits
                          .add(_passwordDigits[index + _enteredDigits.length]);
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey[400]!,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        (index + _enteredDigits.length).toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            ButtonCustom.filled(
              onPressed: () {
                widget.onConfirmation();
                // if (_enteredDigits.length == 6) {
                //   if (_enteredDigits.toString() == _passwordDigits.toString()) {
                //     // Navigate to the next screen or perform the desired action
                //     // if the password is correct.
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => PenarikanTunaiBca(),
                //       ),
                //     );
                //   } else {
                //     // Show an error message or perform the desired action
                //     // if the password is incorrect.
                //     ScaffoldMessenger.of(context).showSnackBar(
                //       SnackBar(
                //         content: Text('Password incorrect'),
                //       ),
                //     );
                //   }
                // }
              },
              height: 40,
              label: 'Konfirmasi',
              color: ColorName.yellowColor,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
