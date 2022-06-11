import 'package:flutter/material.dart';
import 'package:meusite/src/pages/home_page.dart';

import 'pages/about_page.dart';

class MySite extends StatelessWidget {
  const MySite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meu Site",
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': ((context) => AboutPage())
      },
    );
  }
}
