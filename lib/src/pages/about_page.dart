import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:meusite/src/components/text_windows.dart';

import '../components/nav_bar.dart';
import '../widgets/buttom_nav_bar_widget.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    
    Size screenSize = MediaQuery.of(context).size;
    return  Center(
        child: TextWindows(
          child: SingleChildScrollView(
            child: AnimatedTextKit(isRepeatingAnimation: false, animatedTexts: [
              TypewriterAnimatedText(
                  'Meu nome é Celso Júnior tenho 25 anos, amo programação desdos meus 12 anos de idade, sou formado como tecnico em informatica pelo IFRN e em Ciencia e tecnologia pela UFRN, gosto muito de assistir series, animes, filmes, e gosto de jogar tambem, jogos de tabuleiro ou eletronicos o importante é a diversão, já estudei varias linguagens de programação de 2012 para cá (atualmente estamos em 2022) como java, php, c#, python, e atualmente estou estudando Dart, que é o que mais tanho gostado, e olhe que so comecei a estudar ela por causa do Flutter. Ate o momento ainda não tive nenhuma experiencia profissional na area de programação, mas já estou me planejando para publicar alguns Apps que estou desenvolvendo e se quiser ver um pouco do meu trabalho vai la na aba projetos, tenho certaza que irá gostar!',
                  speed: const Duration(milliseconds: 10),
                  textAlign: TextAlign.justify,
                  textStyle:  TextStyle(
                    fontSize: (MediaQuery.of(context).size.width > 600) ? 30:15,
                    fontFamily: 'Anonymice',
                    color: Colors.black,
                  )),
            ]),
          ),
        ),
      );
  }
}
