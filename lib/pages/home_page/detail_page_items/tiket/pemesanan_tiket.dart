import 'package:flutter/material.dart';
import 'package:oepay/common/components/custom_container_card.dart';
import 'package:oepay/common/components/widget_appbar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'kereta/tiket_kereta.dart';
import 'pesawat/tiket_pesawat.dart';

class PemesananTiketPage extends StatefulWidget {
  const PemesananTiketPage({super.key});

  @override
  State<PemesananTiketPage> createState() => _PemesananTiketPageState();
}

class _PemesananTiketPageState extends State<PemesananTiketPage> {
  bool isSatuArah = false;

  void toggleSelection() {
    setState(() {
      isSatuArah = !isSatuArah;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text('Tiket'),
      ),
      body: Stack(
        children: [
          Widgetappbar(
            image: 'assets/icons/mapbase.png',
          ),
          Column(
            children: [
              SizedBox(height: 25),
              CustomContainerCard(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                if (isSatuArah) toggleSelection();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: !isSatuArah
                                    ? ColorName.yellowColor
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Transform.rotate(
                                    angle: 1.57,
                                    child: Icon(
                                      Icons.airplanemode_on,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 16.0),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                if (!isSatuArah) toggleSelection();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isSatuArah
                                    ? ColorName.yellowColor
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.train,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 5),
                                  // Text(
                                  //   'Kereta',
                                  //   style: CustomTextStyles.titleProfil,
                                  // ),
                                ],
                              ),
                            ),
                          ),
                          // const SizedBox(width: 16.0),
                          // Expanded(
                          //   child: ElevatedButton(
                          //     onPressed: () {
                          //       if (!isSatuArah) toggleSelection();
                          //     },
                          //     style: ElevatedButton.styleFrom(
                          //       backgroundColor: isSatuArah
                          //           ? ColorName.yellowColor
                          //           : Colors.white,
                          //       shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(20),
                          //       ),
                          //     ),
                          //     child: Row(
                          //       // crossAxisAlignment: CrossAxisAlignment.start,
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: [
                          //         Image.asset(
                          //           'assets/icons/big-ship.png',
                          //           width: 30,
                          //         ),
                          //         SizedBox(width: 5),
                          //         // Text(
                          //         //   'Kereta',
                          //         //   style: CustomTextStyles.titleProfil,
                          //         // ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      if (!isSatuArah)
                        Wrap(
                          children: [
                            TiketPesawat(),
                          ],
                        )
                      else
                        Wrap(
                          children: [
                            TiketKereta(),
                          ],
                        ),
                    ],
                  ),
                ),
                color: Colors.blueGrey.shade200,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
