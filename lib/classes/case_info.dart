import 'package:flutter/material.dart';
import '../reusable_row_info.dart';

class CaseInfo extends StatelessWidget{
  const CaseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 22.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:   const [
            ReusableRowInfo(textValue:'Номер объявления',textKey: 'RF488918'),
            SizedBox(height: 16.0),
            ReusableRowInfo(textValue:'Пол питомца',textKey: 'Мужской'),
            SizedBox(height: 16.0),
            ReusableRowInfo(textValue:'Добавлено',textKey: 'Вт, 21.09.2021'),
            SizedBox(height: 16.0),
            ReusableRowInfo(textValue:'Найден(а)',textKey: 'Вт, 21.09.2021'),
            SizedBox(height: 16.0),
            ReusableRowInfo(textValue:'Имя хозяина',textKey: 'Владимир'),
          ],
        ),
      ),
    );
  }
}