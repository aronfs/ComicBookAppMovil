

import 'package:comicbookapp/ui.theme/styles/text_style_app.dart';
import 'package:flutter/material.dart';

class TextForms extends StatelessWidget {

  final String title;
  final String subtitle;

  const TextForms({super.key,  required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
            Text(title, style: textStyleBlack.h132),
            Text(
              subtitle,
              style: textStyleBlack.paragraph16,
              textAlign: TextAlign.center,
            )
      ],
    );
  }
}
