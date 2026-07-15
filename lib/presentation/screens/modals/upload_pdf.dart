import 'package:comicbookapp/l10n/app_localizations.dart';
import 'package:comicbookapp/ui.theme/theme_app.dart';
import 'package:flutter/material.dart';

import 'widgets/collector_identity_card.dart';
import 'widgets/export_note.dart';
import 'widgets/info_tile.dart';
import 'widgets/save_pdf_button.dart';
import 'widgets/template_header.dart';

class UploadPdf extends StatelessWidget {
  const UploadPdf({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;

    return Theme(
      data: AppThemeData.themeForms,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TemplateHeader(),
                const SizedBox(height: 16),
                const CollectorIdentityCard(),
                const SizedBox(height: 10),
                InfoTile(
                  icon: Icons.calendar_month_rounded,
                  iconBackgroundColor: const Color(0xFFDDF5FF),
                  iconColor: const Color(0xFF00A8E8),
                  label: appLocalizations.dateCreated,
                  value: '21/04/2022',
                ),
                const SizedBox(height: 10),
                InfoTile(
                  icon: Icons.location_on_outlined,
                  iconBackgroundColor: const Color(0xFFFFE4DC),
                  iconColor: const Color(0xFFFF7A59),
                  label: appLocalizations.location,
                  value: appLocalizations.address,
                ),
                const SizedBox(height: 14),
                SavePdfButton(),
                const SizedBox(height: 8),
                ExportNote(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
