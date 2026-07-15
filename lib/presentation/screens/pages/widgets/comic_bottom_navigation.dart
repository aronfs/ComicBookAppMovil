import 'package:flutter/material.dart';
import 'package:comicbookapp/l10n/app_localizations.dart';

class ComicBottomNavigation extends StatelessWidget {
  const ComicBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cs = Theme.of(context).colorScheme;

    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: cs.inverseSurface,
      selectedItemColor: cs.primary,
      unselectedItemColor: cs.onSurfaceVariant,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home_rounded),
          label: l10n.navHome,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.bookmark_outline_rounded),
          label: l10n.navLibrary,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.favorite_border_rounded),
          label: l10n.navFavorites,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person_outline_rounded),
          label: l10n.navProfile,
        ),
      ],
    );
  }
}
