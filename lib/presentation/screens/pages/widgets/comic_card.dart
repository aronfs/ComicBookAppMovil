import 'package:flutter/material.dart';
import 'package:comicbookapp/ui.theme/styles/text_style_app.dart';

import 'comic_cover.dart';

class ComicCard extends StatelessWidget {
  final String title;
  final String author;
  final String imagePath;
  final String badge;

  const ComicCard({
    super.key,
    required this.title,
    required this.author,
    required this.imagePath,
    required this.badge,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ComicCover(
              imagePath: imagePath,
              badge: badge,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: textStyleBase.paragraph12.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            author,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: textStyleBase.paragraph12.copyWith(
              color: colorScheme.onSurfaceVariant,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
