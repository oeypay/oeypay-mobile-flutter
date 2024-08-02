import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: const Text('Notifications'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              // color: Colors.grey.shade300,
              child: TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(text: 'Notifikasi'),
                  Tab(text: 'Pesan (17)'),
                ],
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.amber,
                dividerColor: Colors.grey.shade300,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.notifications_none,
                        size: 100.0,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        'Tidak ada notifikasi untuk Anda saat ini',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  const Center(child: Text('Content for Kotak Masuk')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
