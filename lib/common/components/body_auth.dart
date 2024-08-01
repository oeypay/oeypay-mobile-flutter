import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/space.dart';
import 'package:oepay/common/constant/styleText.dart';

class BodyAuth extends StatelessWidget {
  final Key? keyForm;
  final List<Widget>? children;
  const BodyAuth({super.key, this.children, this.keyForm});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: SvgPicture.asset(
                  'assets/icons/oeypay-favicon.svg',
                  color: Colors.black,
                  width: 85,
                ),
              ),
              const Space(45),
              ...children ?? []
            ],
          ),
        ),
      ),
    );
  }
}

class AuthDesc extends StatelessWidget {
  final String? title, desc;
  const AuthDesc({super.key, this.desc, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          style: CustomTextStyles.titleShowModal,
        ),
        Space(10),
        Text(
          desc ?? '',
          style: CustomTextStyles.textNominal,
        ),
        Space(20)
      ],
    );
  }
}
