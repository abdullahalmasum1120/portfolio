import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';

class NavItem extends StatefulWidget {
  final Color hoverColor;
  final String text;
  final VoidCallback onTap;
  final String? iconSrc;

  const NavItem({
    Key? key,
    required this.text,
    required this.onTap,
    required this.hoverColor,
    this.iconSrc,
  }) : super(key: key);

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
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
          padding: EdgeInsets.all(widget.iconSrc == null ? 8.0 : 0),
          child: AnimatedContainer(
            transform: isHovered
                ? Matrix4.translationValues(0, 2, 0)
                : Matrix4.translationValues(0, 0, 0),
            decoration: BoxDecoration(
              color: isHovered ? KColors.secondary : Colors.transparent,
              borderRadius: BorderRadius.circular(4.0),
            ),
            alignment: Alignment.center,
            duration: const Duration(milliseconds: 400),
            padding: EdgeInsets.symmetric(
                horizontal: 16.0, vertical: widget.iconSrc == null ? 0 : 12.0),
            child: Row(
              children: [
                if (widget.iconSrc != null) ...[
                  Image.asset(
                    widget.iconSrc!,
                    height: 28,
                    width: 28,
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                ],
                Text(
                  widget.text,
                  style: ScreenSize.isDesktop(context)
                      ? Theme.of(context).textTheme.bodyLarge
                      : Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
