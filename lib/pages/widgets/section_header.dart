import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String name;

  const SectionHeader({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        name,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
