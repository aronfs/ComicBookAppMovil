import 'package:comicbookapp/l10n/app_localizations.dart';
import 'package:comicbookapp/ui.theme/styles/text_style_app.dart';
import 'package:flutter/material.dart';

class SavePdfButton extends StatelessWidget {
  const SavePdfButton({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      height: 44,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.picture_as_pdf_outlined,
          size: 17,
          color: colorScheme.onPrimary,
        ),
        label: Text(
          appLocalizations.savePdf,
          style: textStyleWhite.h214,
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
      ),
    );
  }
}
