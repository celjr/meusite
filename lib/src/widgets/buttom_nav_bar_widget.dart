import 'package:flutter/material.dart';

class ButtonNavBarWidget extends StatefulWidget {
  final String text;
  final bool isCurrentPage;
  final Function() onPressed;
  const ButtonNavBarWidget(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.isCurrentPage = false})
      : super(key: key);

  @override
  State<ButtonNavBarWidget> createState() => _ButtonNavBarStateWidget();
}

class _ButtonNavBarStateWidget extends State<ButtonNavBarWidget> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //falta o set state
      onHover: (value) {
        setState(() => value ? _isHovering = true : _isHovering = false);
      },
      onTap: widget.onPressed,
      child: Text(
        widget.text,
        style: TextStyle(
            color: widget.isCurrentPage
                ? Colors.green.shade400
                : _isHovering
                    ? Colors.green.shade400
                    : Colors.black,
            fontSize: widget.isCurrentPage
                ? 20
                : _isHovering
                    ? 20
                    : 15),
      ),
    );
  }
}
