import 'package:flutter/material.dart';
import 'package:comicbookapp/l10n/app_localizations.dart';
import 'package:comicbookapp/ui.theme/styles/text_style_app.dart';

class UserProfileCard extends StatelessWidget {
  final String name;
  final String email;
  final String ageLabel;
  final String typeLabel;
  final String username;
  final ImageProvider? avatarImage;
  final String avatarInitials;
  final Color nameColor;
  final Color typeColor;

  const UserProfileCard({
    super.key,
    required this.name,
    required this.email,
    required this.ageLabel,
    required this.typeLabel,
    required this.username,
    this.avatarImage,
    this.avatarInitials = '',
    this.nameColor = const Color(0xFF5B2EC5),
    this.typeColor = const Color(0xFF00B4D8),
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final loc = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: colorScheme.outlineVariant,
                    width: 2,
                  ),
                  image: avatarImage != null
                      ? DecorationImage(
                          image: avatarImage!,
                          fit: BoxFit.cover,
                        )
                      : null,
                  color: avatarImage == null
                      ? colorScheme.primaryContainer
                      : null,
                ),
                alignment: Alignment.center,
                child: avatarImage == null
                    ? Text(
                        avatarInitials,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: nameColor,
                        ),
                      )
                    : null,
              ),
              const SizedBox(height: 6),
              Text(
                username,
                style: textStyleBlack.paragraph12.copyWith(color: colorScheme.onSurfaceVariant),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: nameColor,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Icon(Icons.mail_outline,
                        size: 14, color: nameColor.withValues(alpha: 0.6)),
                    const SizedBox(width: 5),
                    Text(
                      email,
                      style: textStyleBlack.paragraph16.copyWith(color: colorScheme.onSurfaceVariant),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          loc.ageLabel,
                          style: textStyleBlack.paragraph12.copyWith(color: colorScheme.onSurfaceVariant),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          ageLabel,
                          style: textStyleBlack.paragraph16.copyWith(color: colorScheme.onSurface),
                        ),
                      ],
                    ),
                    const SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          loc.typeLabel,
                          style: textStyleBlack.paragraph12.copyWith(color: colorScheme.onSurfaceVariant),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          typeLabel,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: typeColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
