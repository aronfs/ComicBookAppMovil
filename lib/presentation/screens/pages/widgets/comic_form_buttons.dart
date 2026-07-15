import 'package:comicbookapp/ui.theme/styles/text_style_app.dart';
import 'package:flutter/material.dart';

class RegisterComicButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const RegisterComicButton({
    super.key,
    this.label = 'REGISTRAR COMIC',
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onPressed,
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [cs.primary, cs.primary.withValues(alpha: 0.8)],
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16),
            alignment: Alignment.center,
            child: Text(
              label,
              style: textStyleWhite.h214.copyWith(letterSpacing: 1),
            ),
          ),
        ),
      ),
    );
  }
}

class CancelComicButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const CancelComicButton({
    super.key,
    this.label = 'CANCELAR',
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: cs.outlineVariant, width: 1.3),
          ),
          child: Text(
            label,
            style: textStyleBlack.h214.copyWith(
              letterSpacing: 1,
              color: cs.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
