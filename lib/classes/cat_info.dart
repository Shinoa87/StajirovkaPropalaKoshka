import 'package:flutter/material.dart';

import '../constants.dart';

class CatInfo extends StatelessWidget{
  const CatInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 22.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text('Пропала кошкодевочка',
              style: TextStyle(
                color: Color(0xFF000000),
                fontFamily: 'Muse Cyril',
                fontSize: 23.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.03
              ),
            ),
            const SizedBox(height:13),
            const Text('Красноармейская улица, 37, Ростов-на-Дону',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13.0,
                fontFamily: 'Roboto',
                letterSpacing: 0.03,
              ),
            ),
            const SizedBox(height:6),
            GestureDetector(
              onTap: () {},
              child: const Text('Показать на карте',
                style: TextStyle(
                  color: kMainColorTheme,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            const SizedBox(height:20),
            const Text('На Красноармейской пропал каракал.Предположительно выпрыгнул через открытое окно. Отзывается на свою кличку "Шлёпа" или "Русский кот". Очень любит пельмени. Клеймо отсутствует, полное телосложение. Чистый и ухоженный, людей не боится.',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 13.2,
                fontFamily: 'Roboto',
                letterSpacing: 0.03,
              ),
            ),
          ],
        ),
      ),
    );
  }
}