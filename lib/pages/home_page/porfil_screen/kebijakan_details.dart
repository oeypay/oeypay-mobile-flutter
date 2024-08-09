import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/style_text.dart';

class KebijakanDetails extends StatelessWidget {
  const KebijakanDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          "Kebijakan Pengaduan",
          style: CustomTextStyles.titleProfilApp,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Action to perform when arrow back icon is pressed
            Navigator.pop(context);
          },
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultrices orci lacus, eget malesuada orci maximus vitae. Suspendisse sed odio imperdiet, mollis lectus eu, ultrices nibh.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Nam nec tincidunt ex, in ultrices purus. Fusce at urna non est molestie ultrices. Nunc elementum tincidunt sagittis.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'roin feugiat augue vitae nisl posuere sodales eget vitae lacus. Nunc tristique magna leo, quis mollis est porttitor sed.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultrices orci lacus, eget malesuada orci maximus vitae. Suspendisse sed odio imperdiet, mollis lectus eu, ultrices nibh.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Nam nec tincidunt ex, in ultrices purus. Fusce at urna non est molestie ultrices. Nunc elementum tincidunt sagittis.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'roin feugiat augue vitae nisl posuere sodales eget vitae lacus. Nunc tristique magna leo, quis mollis est porttitor sed.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
