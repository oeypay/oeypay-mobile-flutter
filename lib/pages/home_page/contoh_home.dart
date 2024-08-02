import 'package:flutter/material.dart';

class PositionedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Positioned Example')),
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                color: Colors.blue.withOpacity(0.3),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                color: Colors.green,
                width: 100,
                height: 100,
              ),
            ),
            Positioned(
              left: 50,
              top: 50,
              width: 100,
              height: 100,
              child: Container(
                color: Colors.yellow,
              ),
            ),

            // Positioned.fill(
            //   left: 20,
            //   right: 20,
            //   top: 40,
            //   bottom: 40,
            //   child: Container(
            //     color: Colors.blue,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
