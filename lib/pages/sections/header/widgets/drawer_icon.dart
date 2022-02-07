import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DrawerIcon extends StatefulWidget {
  final Color hoverColor;
  final VoidCallback onTap;

  const DrawerIcon({
    Key? key,
    required this.hoverColor,
    required this.onTap,
  }) : super(key: key);

  @override
  State<DrawerIcon> createState() => _DrawerIconState();
}

class _DrawerIconState extends State<DrawerIcon> {
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
      child: IconButton(
        onPressed: widget.onTap,
        icon: Icon(
          Icons.menu,
          color: isHovered
              ? widget.hoverColor
              : Theme.of(context).textTheme.bodyText2!.color,
        ),
      ),
    );
  }
}
