import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

class Syaratketentuandetails extends StatelessWidget {
  const Syaratketentuandetails({super.key});
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
                'Any user signing up on this will be considered as GASTOS PROVIDER and he/she agrees to offer a commission Percentage, given text field in shop profile, according to his/her own comfort of business so that we can use it as a discount on every billed amount of the GASTOS customer.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'We hereby declare that the payment of the billed amount after discounting will be directly reflected in the PROVIDER’s account as of which we don’t keep any money in-between the transaction. The received amount will be only X% less (X = value of percentage commission given by the provider) as of the bill created by the PROVIDER. The PROVIDER’s UPI address and payment receivable information will be asked and will not disclosed or shared to anyone or anywhere. The information which will be visible in our main application and before the users are mentioned below along with their purpose: •	Images – All images posted by the provider will be shown in his profile page in the user application (their ',
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
