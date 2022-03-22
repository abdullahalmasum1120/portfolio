import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyIcon extends StatefulWidget {
  final String source;
  final Color hoverColor;
  final Color color;
  final VoidCallback onTap;

  const MyIcon({
    Key? key,
    required this.source,
    required this.hoverColor,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  @override
  State<MyIcon> createState() => _MyIconState();
}

class _MyIconState extends State<MyIcon> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          transform: isHovered ? Matrix4.translationValues(0, 2, 0) : Matrix4.translationValues(0, 0, 0),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: widget.color,
              border: isHovered
                  ? Border.all(
                      color: widget.hoverColor,
                    )
                  : Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor),
              borderRadius: BorderRadius.circular(8)),
          duration: const Duration(milliseconds: 400),
          child: SvgPicture.asset(
            widget.source,
            color: Colors.white,
            height: 20,
            width: 20,
          ),
        ),
      ),
    );
  }
}
