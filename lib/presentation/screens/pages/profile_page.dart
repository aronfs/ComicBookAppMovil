import 'package:comicbookapp/l10n/app_localizations.dart';
import 'package:comicbookapp/presentation/screens/pages/widgets/app_version_footer.dart';
import 'package:comicbookapp/presentation/screens/pages/widgets/menu_grid_card.dart';
import 'package:comicbookapp/presentation/screens/pages/widgets/menu_list_row.dart';
import 'package:comicbookapp/presentation/screens/pages/widgets/user_profile_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
    
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
          children: [
            UserProfileCard(
              name: 'Ramon Pesante',
              email: 'ramon@gmail.com',
              ageLabel: '20',
              typeLabel: 'Autor',
              username: '@ramon1',
              avatarInitials: 'RP',
              nameColor: colorScheme.primary,
              typeColor: colorScheme.primary,
            ),
            const SizedBox(height: 20),
            
            const SizedBox(height: 16),
            Row(
              children: [
                MenuGridCard(
                  label: appLocalizations.profileCatalogs,
                  icon: Icons.library_books_outlined,
                  isDark: false,
                  lightIconColor: colorScheme.primary,
                  onTap: () {},
                ),
                const SizedBox(width: 14),
                MenuGridCard(
                  label: appLocalizations.profilePublication,
                  icon: Icons.add,
                  isDark: true,
                  showAddButton: true,
                  darkColor: colorScheme.primary,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            MenuListRow(
              icon: Icons.people_outline,
              label: appLocalizations.profileOnlineUsers,
              iconColor: colorScheme.primary,
              onTap: () {},
            ),
            const SizedBox(height: 12),
            MenuListRow(
              icon: Icons.edit_document,
              label: appLocalizations.profileEditComics,
              iconColor: const Color(0xFFC8923B),
              onTap: () {},
            ),
            const SizedBox(height: 28),
            AppVersionFooter(
              appName: appLocalizations.versionName,
              version: '2.4.0',
            ),
          ],
        ),
      ),
    );
  }
}
