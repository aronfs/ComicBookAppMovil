import 'package:flutter/material.dart';
import 'package:comicbookapp/ui.theme/styles/text_style_app.dart';

class FormMetaHeader extends StatelessWidget {
  final String codTipo;
  final String serial;
  final String fecha;
  final String usuario;
  final Widget? trailingImage;

  const FormMetaHeader({
    super.key,
    required this.codTipo,
    required this.serial,
    required this.fecha,
    required this.usuario,
    this.trailingImage,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _metaLine(codTipo, cs),
              const SizedBox(height: 2),
              _metaLine(serial, cs),
              const SizedBox(height: 2),
              _metaLine(fecha, cs),
              const SizedBox(height: 6),
              Text(
                usuario,
                style: textStyleBlack.h214.copyWith(color: cs.primary),
              ),
            ],
          ),
        ),
        if (trailingImage != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: 52,
              height: 52,
              child: trailingImage,
            ),
          ),
      ],
    );
  }

  Widget _metaLine(String text, ColorScheme cs) => Text(
        text,
        style: textStyleBlack.paragraph12.copyWith(color: cs.onSurfaceVariant),
      );
}
