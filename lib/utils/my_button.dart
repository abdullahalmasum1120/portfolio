import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String text;
  final Color hoverColor;
  final Function(PointerEnterEvent event) onTap;

  const MyButton({
    Key? key,
    required this.text,
    required this.onTap,
    required this.hoverColor,
  }) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: widget.onTap,
      onHover: (PointerHoverEvent event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (PointerExitEvent event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: isHovered ? widget.hoverColor : null,
            border: isHovered
                ? Border.all(color: Theme.of(context).scaffoldBackgroundColor)
                : Border.all(
                    color: Colors.white,
                  ),
            borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Text(
          widget.text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
