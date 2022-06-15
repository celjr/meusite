import 'package:flutter/material.dart';

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
    return Scaffold(
        appBar: NavBar(
      preferredSize: Size(screenSize.width, 70),
      menuItens: [
        ButtonNavBarWidget(
            text: "HOME",
            onPressed: () {
              Navigator.pushNamed(context, '/');
            }),
        ButtonNavBarWidget(
            text: "ABOUT",
            isCurrentPage: true,
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
    ));
  }
}
