import 'package:comicbookapp/l10n/app_localizations.dart';
import 'package:comicbookapp/ui.theme/styles/text_style_app.dart';
import 'package:flutter/material.dart';

class ExportNote extends StatelessWidget {
  const ExportNote({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    return Center(
      child: Text(
        appLocalizations.exportNote,
        textAlign: TextAlign.center,
        style: textStyleBlack.paragraph12.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}
