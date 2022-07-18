import 'package:flutter/material.dart';
import 'package:stajirovka_1/classes/reusable_footer_info.dart';
import '../constants.dart';

class Footer extends StatelessWidget{
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF7F7F7),
        border:Border(
          top: BorderSide(width: 1.0, color: kGreyLineColor),
        ),
      ),
      width: double.infinity,
      height: 900,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22,right: 22,top:20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF7F7F7),
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: kGreyLineColor),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'PET911',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.03,
                        ),
                      ),
                      SizedBox(height: 20),
                      ReusableFooterInfo(textValue: 'Разместите объявление'),
                      SizedBox(height: 15),
                      ReusableFooterInfo(textValue: 'Платные услуги'),
                      SizedBox(height: 15),
                      ReusableFooterInfo(textValue: 'Полезные советы'),
                      SizedBox(height: 15),
                      ReusableFooterInfo(textValue: 'Отзывы'),
                      SizedBox(height: 15),
                      ReusableFooterInfo(textValue: 'Вопросы-ответы'),
                      SizedBox(height: 15),
                      ReusableFooterInfo(textValue: 'О нас'),
                      SizedBox(height: 15),
                      ReusableFooterInfo(textValue: 'Контакты'),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF7F7F7),
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: kGreyLineColor),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'УСКОРЬТЕ ПОИСК ПИТОМЦА',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.03,
                        ),
                      ),
                      SizedBox(height: 20),
                      ReusableFooterInfo(textValue: 'Распространите объявление в социальных сетях'),
                      SizedBox(height: 15),
                      ReusableFooterInfo(textValue: 'Оповестите клиники и приюты'),
                      SizedBox(height: 15),
                      ReusableFooterInfo(textValue: 'Сообщите волонтёрам о пропаже'),
                      SizedBox(height: 15),
                      ReusableFooterInfo(textValue: 'Оповестите жителей района'),
                      SizedBox(height: 15),
                      ReusableFooterInfo(textValue: 'Создайте премиум-объявление'),
                      SizedBox(height: 15),
                      ReusableFooterInfo(textValue: 'Получайте уведомления о похожих питомцах'),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF7F7F7),
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: kGreyLineColor),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'ПОМОЩЬ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.03,
                        ),
                      ),
                      SizedBox(height: 20),
                      ReusableFooterInfo(textValue: 'Станьте волонтёром'),
                      SizedBox(height: 15),
                      ReusableFooterInfo(textValue: 'Поддержите проект'),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFF7F7F7),
              border: Border(
                bottom: BorderSide(width: 1.0, color: kGreyLineColor),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:22, right: 22,top: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    'СВЯЗАТЬСЯ С НАМИ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.03,
                    ),
                  ),
                  const SizedBox(height: 34),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text(
                          '8 (800) 350-06-10',
                          style:TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 19,
                            letterSpacing: 0.03,
                          )
                      ),
                      Row(
                        children: const [
                          Image(image: AssetImage('images/vk.png')),
                          SizedBox(width: 15),
                          Image(image: AssetImage('images/odnoklassniki.png')),
                          SizedBox(width: 15),
                          Image(image: AssetImage('images/facebook.png')),
                          SizedBox(width: 15),
                          Image(image: AssetImage('images/twitter.png')),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    child: const Text(
                        'Пн-Пт с 9:00 до 18:00 (МСК)',
                        style:TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.03)),
                    onTap: (){},
                  ),
                  const SizedBox(height: 29),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22,right: 22),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFF7F7F7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      GestureDetector(
                        child: const Text(
                            'Пропавшие и найденные животные России',
                            style:TextStyle(
                                color: Color(0xFF8C8C8C),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.03)),
                        onTap: (){},
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        child: const Text(
                            'Пропавшие и найденные животные России по породам',
                            style:TextStyle(
                                color: Color(0xFF8C8C8C),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.03)),
                        onTap: (){},
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: const Text(
                            'Политика конфиденциальности',
                            style:TextStyle(
                                color: Color(0xFF8C8C8C),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.03)),
                        onTap: (){},
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        child: const Text(
                            'Условия пользования',
                            style:TextStyle(
                                color: Color(0xFF8C8C8C),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.03)),
                        onTap: (){},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}