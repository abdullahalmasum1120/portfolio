import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String text;
  final Color hoverColor;
  final VoidCallback onTap;

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
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
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
        child: AnimatedContainer(
          transform: isHovered
              ? Matrix4.translationValues(0, 2, 0)
              : Matrix4.translationValues(0, 0, 0),
          decoration: BoxDecoration(
              color: isHovered ? widget.hoverColor : null,
              border: isHovered
                  ? Border.all(color: Theme.of(context).scaffoldBackgroundColor)
                  : Border.all(
                      color: Colors.white,
                    ),
              borderRadius: BorderRadius.circular(4)),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          duration: const Duration(milliseconds: 400),
          child: Text(
            widget.text,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
