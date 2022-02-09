import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyIcon extends StatefulWidget {
  final String source;
  final Color hoverColor;
  final Color color;
  final Function(PointerEnterEvent event) onTap;

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
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: widget.color,
            border: isHovered
                ? Border.all(
                    color: widget.hoverColor,
                  )
                : Border.all(color: Theme.of(context).scaffoldBackgroundColor),
            borderRadius: BorderRadius.circular(8)),
        child: SvgPicture.asset(
          widget.source,
          color: Colors.white,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
