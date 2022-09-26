import 'package:flutter/material.dart';
import 'package:meusite/src/components/nav_bar.dart';
import 'package:meusite/src/components/skill_component.dart';
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

    return Container(
      color: Colors.white,
      width: screenSize.width,
      height: screenSize.height - 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        verticalDirection: VerticalDirection.up,
        children: [
          Container(
            height: screenSize.height * 0.3-70,
            width: screenSize.width,
            color: Colors.green.shade400,
            child: Column(
              children: [
                const Text('Skills',
                    style: TextStyle(
                      fontSize: 60,
                      fontFamily: 'Anonymice',
                      color: Colors.white,
                    )),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                Flex(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  direction: Axis.horizontal,
                  children: const [
                    SkillComponent(skillValue: 0.6, skillName: 'Dart'),
                    SkillComponent(skillValue: 0.5, skillName: 'Flutter'),
                    SkillComponent(skillValue: 0.2, skillName: 'Query'),
                    SkillComponent(skillValue: 0.9, skillName: 'Dedicação'),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: screenSize.width,
            height: (screenSize.height * 0.7) - 70,
            padding: const EdgeInsets.only(left: 50),
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
                const Spacer(
                  flex: 1,
                ),
                /*Stack(children: [
                  Image.asset(
                    'assets/images/eu_verde.png',
                    scale: imgScale,
                  ),
                  Image.asset(
                    'assets/images/eu.png',
                  ),
                ]),*/
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
