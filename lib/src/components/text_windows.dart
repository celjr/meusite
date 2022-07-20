import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextWindows extends StatelessWidget {
  final Widget child;
  const TextWindows({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.grey,
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'About me',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: child,
          ),
        ],
      ),
      constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width * 0.6,
          maxWidth: MediaQuery.of(context).size.width * 0.7,
          maxHeight: MediaQuery.of(context).size.height * 0.7,
          minHeight: MediaQuery.of(context).size.height * 0.40),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [BoxShadow(blurRadius: 20)],
      ),
      clipBehavior: Clip.antiAlias,
    );
  }
}
