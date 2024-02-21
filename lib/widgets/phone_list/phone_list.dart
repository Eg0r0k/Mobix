import 'package:flutter/material.dart';
import '../../shared/types/types.dart';
import '../../features/phones/phone_item/phone_item.dart';

class PhoneList extends StatelessWidget {
  final List<Phones> phones;
  const PhoneList({super.key, required this.phones});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 50);
        },
        itemCount: phones.length,
        itemBuilder: (BuildContext context, int index) {
          return PhoneItem(
            phoneName: phones[index].phoneName,
            phoneSrc: phones[index].imgSrc,
          );
        });
  }
}
