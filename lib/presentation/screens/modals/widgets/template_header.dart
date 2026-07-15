import 'package:comicbookapp/l10n/app_localizations.dart';
import 'package:comicbookapp/ui.theme/styles/text_style_app.dart';
import 'package:flutter/material.dart';

class TemplateHeader extends StatelessWidget {
  const TemplateHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          appLocalizations.regTemplate,
          style: textStyleBlack.h220.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          appLocalizations.regTemplateDesc,
          style: textStyleBlack.paragraph12.copyWith(
            height: 1.35,
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
