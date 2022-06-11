import 'package:flutter/material.dart';
import 'package:meusite/src/components/nav_bar.dart';
import 'package:meusite/src/widgets/buttom_nav_bar_widget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double imgScale = 1;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    print('buld');

    return Scaffold(
        appBar: NavBar(
          preferredSize: Size(screenSize.width, 70),
          menuItens: [
            ButtonNavBarWidget(
                text: "HOME",
                isCurrentPage: true,
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                }),
            ButtonNavBarWidget(
                text: "ABOUT",
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                }),
            ButtonNavBarWidget(
                text: "PROJECTS",
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                }),
          ],
          color: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          width: screenSize.width,
          height: screenSize.height - 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: [
              Container(
                height: screenSize.height * 0.3,
                width: screenSize.width,
                color: Colors.green.shade400,
              ),
              Container(
                width: screenSize.width,
                height: (screenSize.height * 0.7) - 70,
                padding: const EdgeInsets.only(left: 100, top: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TypewriterAnimatedText(
                              'Class Eu{\n   Celso Júnior;\n   25 anos;\n   Cristão;\n   Programador;\n   Amante da tecnologia;\n}',
                              speed: const Duration(milliseconds: 100),
                              textStyle: const TextStyle(
                                fontSize: 60,
                                fontFamily: 'Anonymice',
                                color: Colors.black,
                              )),
                        ]),
                    const Spacer(),
                    Stack(children: [
                      Image.asset(
                        'assets/images/eu_verde.png',
                        scale: imgScale,
                      ),
                      Image.asset(
                        'assets/images/eu.png',
                      ),
                    ]),
                    SizedBox(
                      width: screenSize.width * 0.1,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
