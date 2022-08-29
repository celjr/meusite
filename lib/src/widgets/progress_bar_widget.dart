import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            constraints: const BoxConstraints(maxWidth:  400),
          ),
          Container(
            height: 50,
            color: Colors.white,
            width: MediaQuery.of(context).size.width /2,
            constraints: const BoxConstraints(maxWidth:  400),
          ),
          Text('test')
        ],
      ),
    );
  }
}
