import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:share/share.dart';
import 'classes/case_info.dart';
import 'classes/cat_info.dart';
import 'classes/share_info.dart';
import 'classes/horizontal_scroll_board.dart';
import 'classes/footer.dart';
import 'classes/carousel_with_indicator.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
   bool _wasTap = false;
   bool isChanged = true;

  @override
  Widget build(BuildContext context) {
    String textNumber = 'Показать номер хозяина';
    int number = 88005553535;
    var controller = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 100.0,
        leading: Row(
          children: [
            IconButton(onPressed: (){},
                icon: const Icon(Icons.keyboard_backspace),
                color: kMainColorTheme
            ),
            const Text('Назад', style: TextStyle(color: kMainColorTheme,fontWeight: FontWeight.w500)),
          ],
        ),
        actions: [
           IconButton(
                onPressed: (){
                  setState(() {
                    _wasTap = !_wasTap;
                  });
            },
                icon: _wasTap ? const Icon(Icons.favorite_sharp) : const Icon(Icons.favorite_outline),
                color: _wasTap ? Colors.red : kMainColorTheme
           ),
          IconButton(onPressed: (){Share.share('Пропала кошка');}, icon: const Icon(Icons.upload),color: kMainColorTheme),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CarouselWithIndicator(),
              const CatInfo(),
              const SizedBox(height:25),
              //показать номер хозяина
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 22.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFCFE9DC),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  height:45.0,
                  width: double.infinity,
                  child:  Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isChanged = !isChanged;
                        });
                      },
                      child:  Text(
                        isChanged == true ? textNumber : number.toString(),
                        style: const TextStyle(
                          color: Color(0xFF33463C),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height:17),
              const ShareInfo(),
              const SizedBox(height: 17.0),
              //Просто линия
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: kGreyLineColor,
                      )
                  ),
                ),
              ),
              const SizedBox(height: 13.0),
              const CaseInfo(),
              const SizedBox(height: 35.0),
              //Похожие пропавшие
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 0,horizontal: 22.0),
                child: SizedBox(
                  width: double.infinity,
                  child:Text('Похожие пропавшие',
                    style: TextStyle(
                      fontFamily: 'Muse Cyril',
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const HorizontalScrollBoard(),
              const SizedBox(height:27.0),
              //2 комментария
              const Padding(
                padding: EdgeInsets.only(left: 22.0, top : 0, right: 22.0, bottom: 0.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('2 комментария',
                    style: TextStyle(
                      fontFamily: 'Muse Cyril',
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              //TextField
              Container(
                height: 54,
                width: double.infinity,
                color: const Color(0xFFF6F6F6),
                child: Padding(
                  padding:  const EdgeInsets.only(left: 22.0, right: 22.0),
                  child: Center(
                    child: Container(
                      color: Colors.white,
                      height: 35,
                      child: TextField(
                        controller: controller,
                        decoration:  InputDecoration(
                          hintStyle: const TextStyle(
                            color: Color(0xFF979799),
                            fontSize: 11,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.03,
                          ),
                          suffixStyle: const TextStyle(
                            color: kMainColorTheme,
                            fontSize: 11,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.03,
                          ),
                          border: const OutlineInputBorder(),
                          hintText: 'Ваш комментарий...',
                          suffix: GestureDetector(
                            onTap: () {
                              setState(() {
                                controller.clear;
                              });
                            },
                            child:  const Text('Отпр.'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              //Сами комментарии
              Column(
                children: [
                  Container(
                    width:double.infinity,
                    color: const Color(0xFFF1FCEF),
                    child: Padding(
                      padding:  const EdgeInsets.only(left: 22.0, right: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 6),
                          Text(
                            'Арсений',
                            style: TextStyle(
                              color:Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.03,
                            ),
                          ),
                          SizedBox(height:  7.0),
                          Text(
                            '“На Красноармейской пропал каракал” - звучит уже неплохо!',
                            style: TextStyle(
                              color:Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 13.2,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.03,
                            ),
                          ),
                          SizedBox(height:  14.0),
                          Text(
                            'Понедельник, 5:33',
                            style: TextStyle(
                              color: Color(0xFF979799),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.03,
                            ),
                          ),SizedBox(height: 12)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width:double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding:  const EdgeInsets.only(left: 22.0, right: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 6),
                          Text(
                            'Дмитрий',
                            style: TextStyle(
                              color:Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.03,
                            ),
                          ),
                          SizedBox(height:  7.0),
                          Text(
                            'Как вернусь в Ростов, обыщу наши подвалы, я рядом живу',
                            style: TextStyle(
                              color:Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 13.2,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.03,
                            ),
                          ),
                          SizedBox(height:  14.0),
                          Text(
                            'Понедельник, 6:47',
                            style: TextStyle(
                              color: Color(0xFF979799),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.03,
                            ),
                          ),SizedBox(height: 12)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 27),
              //Просто линия
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xFFCBCBCB),
                      )
                  ),
                ),
              ),
              const SizedBox(height: 8),
              //Пожаловаться на объявление
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.report_problem_outlined, color: kMainColorTheme),
                        const SizedBox(width: 6),
                        GestureDetector(
                          onTap:  () {
                            setState(() {
                            });
                          },
                          child: const Text(
                            'Пожаловаться на объявление',
                            style:TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 13,
                              letterSpacing: -0.0041,
                              fontWeight: FontWeight.w500,
                              color: kMainColorTheme
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
