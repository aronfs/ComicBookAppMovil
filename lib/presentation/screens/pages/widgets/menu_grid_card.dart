import 'package:flutter/material.dart';

class MenuGridCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isDark;
  final bool showAddButton;
  final Color darkColor;
  final Color? lightIconColor;
  final VoidCallback? onTap;

  const MenuGridCard({
    super.key,
    required this.label,
    required this.icon,
    this.isDark = false,
    this.showAddButton = false,
    this.darkColor = const Color(0xFF3B1FA3),
    this.lightIconColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final Color bg = isDark ? darkColor : colorScheme.surfaceContainerHighest;
    final Color fg = isDark ? colorScheme.onPrimary : (lightIconColor ?? colorScheme.primary);

    return Expanded(
      child: Material(
        color: bg,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 28, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (showAddButton)
                  Container(
                    width: 40,
                    height: 40,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: colorScheme.onPrimary, width: 2),
                    ),
                    alignment: Alignment.center,
                    child: Icon(Icons.add, size: 22, color: colorScheme.onPrimary),
                  )
                else
                  Icon(icon, size: 36, color: fg),
                SizedBox(height: showAddButton ? 0 : 14),
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: fg,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
