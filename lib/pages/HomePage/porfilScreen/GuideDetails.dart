import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

class GuidDetails extends StatelessWidget {
  const GuidDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          "Guide App",
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
              Text(
                'Guide to OePay Provider App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Learn how OePay works.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                ),
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
