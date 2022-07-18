import 'package:flutter/material.dart';

class ReusableRowInfo extends StatelessWidget {
  final String? textValue;
  final String? textKey;
  const ReusableRowInfo({Key? key,required this.textValue, required this.textKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Expanded(
          child: Text(textValue!, style: const TextStyle(color: Color(0xFF979799)),
          ),
        ),
        Expanded(
          child: Text(textKey!),
        ),
      ],
    );
  }
}