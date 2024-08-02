import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

class KebijakanPribadiDetails extends StatelessWidget {
  const KebijakanPribadiDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          "Syarat & Ketentuan",
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
                'By downloading or using the app, these terms will automatically apply to you – you should make sure therefore that you read them carefully before using the app. You’re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You’re not allowed to attempt to extract the source code of the app, and you also shouldn’t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to GASTOS.',
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
