import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meusite/src/components/nav_bar.dart';
import 'package:meusite/src/widgets/buttom_nav_bar_widget.dart';
import 'package:meusite/src/widgets/session_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();
  late ValueNotifier currentPage = ValueNotifier(0);
  late ScrollController scrollController;

  final keySection1 = GlobalKey();
  final keySection2 = GlobalKey();
  final keySection3 = GlobalKey();

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          NavBar(
                  preferredSize: Size(screenSize.width, 70),
                  menuItens: [
                    ValueListenableBuilder(
                        valueListenable: currentPage,
                        builder: (context, value, __) {
                          return ButtonNavBarWidget(
                              text: "HOME",
                              isCurrentPage: value == 0 ? true : false,
                              onPressed: () {
                                _onClickMenuItem(1);
                                currentPage.value = 0;
                              });
                        }),
                    ValueListenableBuilder(
                        valueListenable: currentPage,
                        builder: (context, value, _) {
                          return ButtonNavBarWidget(
                              text: "ABOUT",
                              isCurrentPage: currentPage.value == 1 ? true : false,
                              onPressed: () {
                                currentPage.value = 1;
                                _onClickMenuItem(2);
                               
                              });
                        }),
                    ValueListenableBuilder(
                        valueListenable: currentPage,
                        builder: (context, value, _) {
                          return ButtonNavBarWidget(
                              text: "PROJECTS",
                              isCurrentPage: value == 2 ? true : false,
                              onPressed: () {
                                currentPage.value = 2;
                               _onClickMenuItem(3);
                              });
                        }),
                  ],
                  color: Colors.white,
                ),
          Expanded(
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  SectionWidget(key: keySection1, height: 1300, color: Colors.black),
                  SectionWidget(key: keySection2, height: 500, color: Colors.red),
                  SectionWidget(key: keySection3, height: 1300, color: Colors.blue)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _onClickMenuItem(int item) {
    final RenderBox renderBox;
    switch (item) {
      case 1:
        renderBox = keySection1.currentContext!.findRenderObject() as RenderBox;
        break;
      case 2:
        renderBox = keySection2.currentContext!.findRenderObject() as RenderBox;
        break;
      case 3:
        renderBox = keySection3.currentContext!.findRenderObject() as RenderBox;
        break;
      default:
        throw Exception();
    }
    final offset = renderBox.localToGlobal(Offset.zero);
    scrollController.animateTo(
      offset.dy + scrollController.offset,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }
}
