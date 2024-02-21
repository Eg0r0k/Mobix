import 'package:flutter/material.dart';
import '../../../app/app_theme.dart';

class PhoneItem extends StatelessWidget {
  final String phoneSrc;
  final String phoneName;
  const PhoneItem({super.key, required this.phoneName, required this.phoneSrc});
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: CustomCardTheme.cardDecoration,
          child: Column(children: <Widget>[
            ClipRect(
              child: Container(
                constraints: const BoxConstraints(
                  minHeight: 400,
                  maxHeight: 600,
                ),
                child: Image.network(phoneSrc),
              ),
            ),
            Text(phoneName)
          ]),
        ));
  }
}
