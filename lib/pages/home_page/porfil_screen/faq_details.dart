import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: const Text('FAQs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const <Widget>[
            FAQItem(
              title: 'What is the referral program?',
              content:
                  'Maecenas malesuada tellus eu posuere vehicula. Nam nec dapibus nisi, quis efficitur ante. Duis nec bibendum eros. Proin euismod nulla a massa facilisis, non vestibulum augue auctor. Ut ornare at est ac ullamcorper.',
            ),
            Divider(),
            FAQItem(
              title: 'How it works?',
              content:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
            ),
            Divider(),
            // Add more FAQ items here
          ],
        ),
      ),
    );
  }
}

class FAQItem extends StatefulWidget {
  final String title;
  final String content;

  const FAQItem({super.key, required this.title, required this.content});

  @override
  _FAQItemState createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(widget.title),
          trailing: IconButton(
            icon: Icon(_expanded
                ? Icons.arrow_circle_down_rounded
                : Icons.arrow_circle_up_rounded),
            onPressed: () {
              setState(() {
                _expanded = !_expanded;
              });
            },
          ),
        ),
        _expanded
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(widget.content),
              )
            : Container(),
      ],
    );
  }
}
