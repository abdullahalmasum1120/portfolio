import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HeaderItem extends StatefulWidget {
  final Color hoverColor;
  final String text;
  final VoidCallback onTap;

  const HeaderItem({
    Key? key,
    required this.text,
    required this.onTap,
    required this.hoverColor,
  }) : super(key: key);

  @override
  State<HeaderItem> createState() => _HeaderItemState();
}

class _HeaderItemState extends State<HeaderItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
      cursor: SystemMouseCursors.click,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 20,
        ),
        child: Text(
          widget.text,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: isHovered
                    ? widget.hoverColor
                    : Theme.of(context).textTheme.bodyText2!.color,
              ),
        ),
      ),
    );
  }
}
