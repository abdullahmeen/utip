import 'package:flutter/material.dart';

class TotalPerPerson extends StatelessWidget {
  const TotalPerPerson({
    super.key,
    required this.theme,
    required this.style,
    required this.total,
  });

  final ThemeData theme;
  final TextStyle style;
  final double total;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(08),
      child: Container(
        padding: const EdgeInsets.all(08),
        decoration: BoxDecoration(
          color: theme.colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(18),
          //buildthemecontext
        ),
        child: Column(
          children: [
            Text('Total Per Person', style: style),
            Text(
              total.toStringAsFixed(2),
              style: style.copyWith(
                color: theme.colorScheme.onPrimary,
                fontSize: theme.textTheme.displaySmall?.fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}