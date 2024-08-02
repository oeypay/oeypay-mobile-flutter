import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/space.dart';
import 'package:oepay/common/constant/styleText.dart';

class BodyAuth extends StatelessWidget {
  final Key? keyForm;
  final bool? center;
  final List<Widget>? children;
  const BodyAuth({super.key, this.children, this.center = false, this.keyForm});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment:
                center! ? MainAxisAlignment.center : MainAxisAlignment.start,
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
  final bool? center;
  const AuthDesc({super.key, this.desc, this.center = false, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          center! ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          textAlign: center! ? TextAlign.center : TextAlign.left,
          style: CustomTextStyles.titleShowModal,
        ),
        Space(10),
        if (desc != null)
          Text(
            desc ?? '',
            textAlign: center! ? TextAlign.center : TextAlign.left,
            style: CustomTextStyles.textNominal,
          ),
        Space(20)
      ],
    );
  }
}
