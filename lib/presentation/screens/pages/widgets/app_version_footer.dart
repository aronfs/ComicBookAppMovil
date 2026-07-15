import 'package:flutter/material.dart';

class AppVersionFooter extends StatelessWidget {
  final String appName;
  final String version;

  const AppVersionFooter({
    super.key,
    required this.appName,
    required this.version,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Text(
      '$appName v$version',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 12.5,
        color: colorScheme.onSurfaceVariant,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
