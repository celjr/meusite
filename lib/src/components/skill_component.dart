import 'package:flutter/material.dart';

class SkillComponent extends StatelessWidget {
  const SkillComponent(
      {Key? key, required this.skillValue, required this.skillName})
      : super(key: key);
  final double skillValue;
  final String skillName;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          CircularProgressIndicator(
            value: skillValue,
            strokeWidth: 7,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(skillName,
              style: const TextStyle(
                  fontFamily: 'Anonymice', color: Colors.white, fontSize: 15)),
        ],
      ),
    );
  }
}
