import 'package:comicbookapp/l10n/app_localizations.dart';
import 'package:comicbookapp/navigation/router.dart';
import 'package:comicbookapp/presentation/screens/pages/widgets/comic_form_buttons.dart';
import 'package:comicbookapp/presentation/screens/pages/widgets/form_meta_header.dart';
import 'package:comicbookapp/presentation/screens/pages/widgets/number_spinner_field.dart';
import 'package:comicbookapp/presentation/screens/pages/widgets/pdf_upload_zone.dart';
import 'package:comicbookapp/presentation/screens/pages/widgets/underline_dropdown_field.dart';
import 'package:comicbookapp/presentation/screens/pages/widgets/underline_text_field.dart';
import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final _titleController = TextEditingController();
  final _editorialController = TextEditingController();
  final _descriptionController = TextEditingController();

  int _numTomos = 1;
  String _genero = 'Superhero';
  String _tipo = 'Graphic Novel';
  String? _pdfFileName;

  @override
  void dispose() {
    _titleController.dispose();
    _editorialController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _onRegister() {}

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
          children: [
            FormMetaHeader(
              codTipo: 'CODTIPO-V2186U',
              serial: 'SERIAL-S4294J',
              fecha: '21/04/2022',
              usuario: 'ramon1',
            ),
            const SizedBox(height: 24),
            UnderlineTextField(
              label: appLocalizations.formTitle,
              hintText: appLocalizations.formTitleHint,
              controller: _titleController,
            ),
            const SizedBox(height: 20),
            UnderlineTextField(
              label: appLocalizations.formEditorial,
              hintText: appLocalizations.formEditorialHint,
              controller: _editorialController,
            ),
            const SizedBox(height: 20),
            NumberSpinnerField(
              label: appLocalizations.formNumTomos,
              initialValue: _numTomos,
              onChanged: (v) => setState(() => _numTomos = v),
            ),
            const SizedBox(height: 20),
            UnderlineDropdownField<String>(
              label: appLocalizations.formGenero,
              value: _genero,
              items: [
                DropdownMenuItem(value: 'Superhero', child: Text(appLocalizations.genreSuperhero)),
                DropdownMenuItem(value: 'Manga', child: Text(appLocalizations.genreManga)),
                DropdownMenuItem(value: 'Sci-Fi', child: Text(appLocalizations.genreSciFi)),
                DropdownMenuItem(value: 'Horror', child: Text(appLocalizations.genreHorror)),
                DropdownMenuItem(value: 'Fantasy', child: Text(appLocalizations.genreFantasy)),
                DropdownMenuItem(value: 'Romance', child: Text(appLocalizations.genreRomance)),
              ],
              onChanged: (v) {
                if (v != null) setState(() => _genero = v);
              },
            ),
            const SizedBox(height: 20),
            UnderlineTextField(
              label: appLocalizations.formDescripcion,
              hintText: appLocalizations.formDescripcionHint,
              controller: _descriptionController,
              maxLines: 3,
            ),
            const SizedBox(height: 20),
            UnderlineDropdownField<String>(
              label: appLocalizations.formTipo,
              value: _tipo,
              items: [
                DropdownMenuItem(value: 'Graphic Novel', child: Text(appLocalizations.typeGraphicNovel)),
                DropdownMenuItem(value: 'Manga', child: Text(appLocalizations.typeManga)),
                DropdownMenuItem(value: 'One-Shot', child: Text(appLocalizations.typeOneShot)),
                DropdownMenuItem(value: 'Mini-Serie', child: Text(appLocalizations.typeMiniSerie)),
                DropdownMenuItem(value: 'Serie Ongoing', child: Text(appLocalizations.typeSerieOngoing)),
              ],
              onChanged: (v) {
                if (v != null) setState(() => _tipo = v);
              },
            ),
            const SizedBox(height: 20),
            PdfUploadZone(
              fileName: _pdfFileName,
              label: appLocalizations.formPdfLabel,
              buttonLabel: appLocalizations.formPdfButton,
              onUpload: () => Navigator.pushNamed(context, uploadPdfPage),
            ),
            const SizedBox(height: 28),
            RegisterComicButton(
              label: appLocalizations.formSubmit,
              onPressed: _onRegister,
            ),
            const SizedBox(height: 12),
            CancelComicButton(
              label: appLocalizations.formCancel,
              onPressed: () => Navigator.of(context).maybePop(),
            ),
          ],
        ),
      ),
    );
  }
}
