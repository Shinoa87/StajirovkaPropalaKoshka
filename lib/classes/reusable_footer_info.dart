import 'package:flutter/material.dart';

class ReusableFooterInfo extends StatelessWidget {
  final String? textValue;
  const ReusableFooterInfo({Key? key,required this.textValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
          textValue!,
          style:const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.03
          )),
      onTap: (){},
    );
  }
}