
import 'package:flutter/material.dart';

class RowTip extends StatelessWidget {
  const RowTip({
    super.key,
    required this.theme,
    required this.totaltip,
  });

  final ThemeData theme;
  final double totaltip;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Tip", style: theme.textTheme.titleMedium),
        Text(totaltip.toStringAsFixed(2), style: theme.textTheme.titleMedium),
      ],
    );
  }
}