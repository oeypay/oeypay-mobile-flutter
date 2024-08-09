import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:local_auth/local_auth.dart';

class SecuritySettingsPage extends StatefulWidget {
  const SecuritySettingsPage({super.key});

  @override
  State<SecuritySettingsPage> createState() => _SecuritySettingsPageState();
}

class _SecuritySettingsPageState extends State<SecuritySettingsPage> {
  late final LocalAuthentication auth;
  bool _supportState = false;

  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() {
            _supportState = isSupported;
          }),
        );
  }

  void showSnackbar(BuildContext context, String? info) {
    final snackBar = SnackBar(
      content: Text(info!),
      duration: const Duration(seconds: 3), // Durasi pesan
      action: SnackBarAction(
        label: 'Perhatian',
        onPressed: () {
          // Some code to undo the change.
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text(info!),
          //   ),
          // );
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: const Text('Security Settings'),
      ),
      body: Card(
        // elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const Icon(
                  Icons.lock,
                  color: ColorName.profilIconColor,
                ),
                title: const Text('Ganti PIN'),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 17,
                ),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.fingerprint_outlined,
                    color: ColorName.profilIconColor),
                title: const Text('Finnger Print'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 17),
                // onLongPress: () => _authenticate(),
                onTap: () {
                  if (_supportState) {
                    showSnackbar(context, 'Is Support');
                  } else {
                    showSnackbar(context, 'Is not Supported!');
                  }
                  _getAvailableBiometrics();
                  _authenticate();
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.location_on,
                    color: ColorName.profilIconColor),
                title: const Text('Location Permission'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 17),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _getAvailableBiometrics() async {
    List<BiometricType> availableBiometrics =
        await auth.getAvailableBiometrics();
    print('List of availableBiometrik : $availableBiometrics');

    if (!mounted) {
      return;
    }
  }

  Future<void> _authenticate() async {
    try {
      bool authenticated = await auth.authenticate(
        localizedReason: 'selamat mencoba',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: false,
        ),
      );
      print('Authenticated: $authenticated');
      // showSnackbar(context, 'Berhasil');
    } on PlatformException catch (e) {
      print('terjadi kesalahan : $e');
    }
  }
}
