import 'package:flutter/material.dart';
import 'board_item.dart';
import '../widgets/board_card.dart';

class HorizontalScrollBoard extends StatelessWidget {
  const HorizontalScrollBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BoardItem> items = [
      BoardItem(
          date: '8.10.2021',
          title: 'Найдена кошка, 3-я круговая улица',
          urlImage: 'https://cs6.pikabu.ru/post_img/big/2015/02/03/10/1422980555_405833516.jpg',
          description: 'На западном пропала собака овчарка, приметы: рост метров двадцать ...'
      ),
      BoardItem(
          date: '8.10.2021',
          title: 'Найдена кошка, 3-я круговая улица',
          urlImage: 'https://cs14.pikabu.ru/post_img/2021/04/11/8/og_og_161814595429169056.jpg',
          description: 'На западном пропала собака овчарка, приметы: рост метров двадцать ...'
      ),
      BoardItem(
          date: '8.10.2021',
          title: 'Найдена кошка, 3-я круговая улица',
          urlImage: 'https://cs6.pikabu.ru/post_img/big/2015/02/03/10/1422980555_405833516.jpg',
          description: 'На западном пропала собака овчарка, приметы: рост метров двадцать ...'
      ),
      BoardItem(
          date: '8.10.2021',
          title: 'Найдена кошка, 3-я круговая улица',
          urlImage: 'https://cs14.pikabu.ru/post_img/2021/04/11/8/og_og_161814595429169056.jpg',
          description: 'На западном пропала собака овчарка, приметы: рост метров двадцать ...'
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 22.0),
      child: SizedBox(
        height:304,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            separatorBuilder: (context, _) => const SizedBox(width: 17),
            itemBuilder: (BuildContext context, int index) => boardCard(item: items[index])
        ),
      ),
    );
  }
}