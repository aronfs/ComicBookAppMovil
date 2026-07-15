import 'package:flutter/material.dart';
import 'package:comicbookapp/l10n/app_localizations.dart';

import 'comic_card.dart';

class ComicGrid extends StatelessWidget {
  const ComicGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final comics = [
      {
        'title': 'Nightfall Vengeance',
        'author': 'Elena Vance',
        'image': 'assets/images/nightfall_vengeance.jpg',
        'badge': appLocalizations.comicBadgeAvailable,
      },
      {
        'title': 'Cursed Chronicles',
        'author': 'Kenji Sato',
        'image': 'assets/images/cursed_chronicles.jpg',
        'badge': appLocalizations.comicBadgeAvailable,
      },
      {
        'title': 'Orbit Protocol',
        'author': 'Marcus Grey',
        'image': 'assets/images/orbit_protocol.jpg',
        'badge': appLocalizations.comicBadgeAvailable,
      },
      {
        'title': 'Mirror Realms',
        'author': 'S. J. Aris',
        'image': 'assets/images/mirror_realms.jpg',
        'badge': appLocalizations.comicBadgeNext,
      },
    ];

    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 92),
      itemCount: comics.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 9,
        mainAxisSpacing: 9,
        childAspectRatio: 0.58,
      ),
      itemBuilder: (context, index) {
        final comic = comics[index];

        return ComicCard(
          title: comic['title']!,
          author: comic['author']!,
          imagePath: comic['image']!,
          badge: comic['badge']!,
        );
      },
    );
  }
}
