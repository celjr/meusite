import 'package:flutter/material.dart';


enum AlignType{
 center,
 right, 
}
class NavBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final List<Widget> menuItens;
  final Color? color;
  final AlignType alignType;
  const NavBar(
      {Key? key,
      required this.preferredSize,
      required this.menuItens,
      this.alignType = AlignType.center,
      this.color = Colors.white})
      : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.preferredSize.width,
      height: widget.preferredSize.height,
      decoration: BoxDecoration(color: widget.color, boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(
            5.0,
            5.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ), //BoxShadow
        BoxShadow(
          color: Colors.white,
          offset: Offset(0.0, 0.0),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ),
      ]),
      child: Row(
        mainAxisAlignment: switch(widget.alignType)  {
          AlignType.center =>MainAxisAlignment.spaceEvenly,
           AlignType.right =>MainAxisAlignment.end,
        },
        children: widget.menuItens,
      ),
    );
  }
}
