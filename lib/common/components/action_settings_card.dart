// import 'package:flutter/material.dart';

// class ActionCard extends StatelessWidget {
//   final VoidCallback onGantiPin;
//   final VoidCallback onPassKey;
//   final VoidCallback onLocationPermission;

//   const ActionCard({
//     Key? key,
//     required this.onGantiPin,
//     required this.onPassKey,
//     required this.onLocationPermission,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 5,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Settings',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 20),
//             ListTile(
//               leading: const Icon(Icons.lock),
//               title: const Text('Ganti PIN'),
//               trailing: const Icon(Icons.arrow_forward_ios),
//               onTap: onGantiPin,
//             ),
//             const Divider(),
//             ListTile(
//               leading: const Icon(Icons.vpn_key),
//               title: const Text('Pass Key'),
//               trailing: const Icon(Icons.arrow_forward_ios),
//               onTap: onPassKey,
//             ),
//             const Divider(),
//             ListTile(
//               leading: const Icon(Icons.location_on),
//               title: const Text('Location Permission'),
//               trailing: const Icon(Icons.arrow_forward_ios),
//               onTap: onLocationPermission,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: const Text('Action Card Example'),
// //         ),
// //         body: Center(
// //           child: ActionCard(
// //             onGantiPin: () {
// //               print('Ganti PIN tapped');
// //             },
// //             onPassKey: () {
// //               print('Pass Key tapped');
// //             },
// //             onLocationPermission: () {
// //               print('Location Permission tapped');
// //             },
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
