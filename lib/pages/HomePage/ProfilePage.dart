import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/Settings/securityPage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Info
            // const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 40, bottom: 20),
              color: ColorName.yellowColor,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/images/Financialdata.png'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Ahmad',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Telepon: 081234567890',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    'Email: ahmad@example.com',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
            // Money Info
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(
                      children: [
                        Text('Uang Masuk', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 4),
                        Text('Rp 5.000.000',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(
                      children: [
                        Text('Uang Keluar', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 4),
                        Text('Rp 2.000.000',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Menu Items
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Pengaturan Profil'),
              onTap: () {
                // Navigate to profile settings page
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.security),
              title: const Text('Pengaturan Keamanan'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecuritySettingsPage(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.link),
              title: const Text('Akun Terhubung'),
              onTap: () {
                // Navigate to linked accounts page
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.verified_user),
              title: const Text('Verifikasi'),
              onTap: () {
                // Navigate to verification page
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Pusat Bantuan'),
              onTap: () {
                // Navigate to help center page
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text('Syarat dan Ketentuan'),
              onTap: () {
                // Navigate to terms and conditions page
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Kebijakan Privasi'),
              onTap: () {
                // Navigate to privacy policy page
              },
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
