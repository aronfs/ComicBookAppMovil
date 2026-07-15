import 'package:comicbookapp/ui.theme/size_app.dart';
import 'package:comicbookapp/ui.theme/styles/text_style_app.dart';
import 'package:flutter/material.dart';

class LabelForms extends StatelessWidget {
  final String label;
  const LabelForms({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric( horizontal: sizeLabel),
          child: Text(label, style: textStyleBlack.paragraph16),
      ),
    );
  }
}
