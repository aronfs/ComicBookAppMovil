import 'package:flutter/material.dart';
import 'package:comicbookapp/l10n/app_localizations.dart';

class ComicCategoryFilters extends StatelessWidget {
  const ComicCategoryFilters({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final colors = Theme.of(context).colorScheme;
    final categories = [loc.catAll, loc.catAction, loc.catSciFi, loc.catManga, loc.catFantasy];

    return SizedBox(
      height: 34,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: categories.length,
        separatorBuilder: (_, _) => const SizedBox(width: 9),
        itemBuilder: (context, index) {
          final selected = index == 0;

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: selected
                  ? colors.primary
                  : colors.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: selected
                    ? colors.primary
                    : colors.surfaceContainerHighest,
              ),
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                color: selected ? colors.onPrimary : colors.onSurface,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        },
      ),
    );
  }
}
