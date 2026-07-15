import 'package:flutter/material.dart';

class ComicCover extends StatelessWidget {
  final String imagePath;
  final String badge;

  const ComicCover({
    super.key,
    required this.imagePath,
    required this.badge,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: colorScheme.surfaceContainerHighest,
                alignment: Alignment.center,
                child: Icon(
                  Icons.menu_book_rounded,
                  color: colorScheme.onSurfaceVariant,
                  size: 42,
                ),
              );
            },
          ),
          Positioned(
            top: 6,
            left: 6,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: BoxDecoration(
                color: const Color(0xFF251A31).withValues(alpha: 0.92),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Text(
                badge.toUpperCase(),
                style: const TextStyle(
                  color: Color(0xFFFFD16A),
                  fontSize: 7,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
