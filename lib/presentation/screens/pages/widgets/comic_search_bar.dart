import 'package:comicbookapp/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class ComicSearchBar extends StatelessWidget {
  const ComicSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      height: 42,
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: TextStyle(color: colors.onSurface, fontSize: 13),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search_rounded,
            color: colors.onSurfaceVariant,
            size: 21,
          ),
          hintText: AppLocalizations.of(context)!.searchHint,
          hintStyle: TextStyle(
            color: colors.onSurfaceVariant,
            fontSize: 12,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 12),
        ),
      ),
    );
  }
}
