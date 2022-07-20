import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meusite/src/pages/about_page.dart';
import 'package:meusite/src/pages/home_page.dart';
import 'package:meusite/src/pages/projects_page.dart';


import '../components/nav_bar.dart';
import '../widgets/buttom_nav_bar_widget.dart';

class ControllerPages extends StatefulWidget {
  const ControllerPages({Key? key}) : super(key: key);

  @override
  State<ControllerPages> createState() => _ControllerPagesState();
}

class _ControllerPagesState extends State<ControllerPages> {
  final List<Widget> pages = const [HomePage(),AboutPage(),ProjectsPage()];
  final PageController pageController =  PageController();
  late ValueNotifier currentPage = ValueNotifier(0);

  @override
  void dispose() {
    pageController.dispose();
    currentPage.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NavBar(
          preferredSize: Size(screenSize.width, 70),
          menuItens: [
            ValueListenableBuilder(
              valueListenable: currentPage,
              builder: (context,value,__) {
                return ButtonNavBarWidget(
                    text: "HOME",
                    isCurrentPage: value == 0?true:false,
                    onPressed: () {
                      currentPage.value = 0;
                      pageController.animateToPage(0,
                        duration:const Duration(milliseconds: 800),
                        curve: Curves.easeInOut
                      );
                    });
              }
            ),
             ValueListenableBuilder(
              valueListenable: currentPage,
              builder: (context,value,_) {
                return ButtonNavBarWidget(
                    text: "ABOUT",
                    isCurrentPage:currentPage.value == 1?true:false,
                    onPressed: () {
                      currentPage.value = 1;
                      pageController.animateToPage(1,
                        duration:const Duration(milliseconds: 800),
                        curve: Curves.easeInOut
                      );
                     print(pageController.page);
                    });
              }
            ),
            ValueListenableBuilder(
              valueListenable: currentPage,
              builder: (context,value,_) {
                return ButtonNavBarWidget(
                    text: "PROJECTS",
                    isCurrentPage: value == 2?true:false,
                    onPressed: () {
                      currentPage.value = 2;
                      pageController.animateToPage(2,
                        duration:const Duration(milliseconds: 800),
                        curve: Curves.easeInOut
                      );
                      print(pageController.page);
                    });
              }
            ),
          ],
          color: Colors.white,
        ),
        body:PageView(
          children: pages,
          controller: pageController,
        )
        
    );
  }
}