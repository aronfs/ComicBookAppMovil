import 'package:comicbookapp/l10n/app_localizations.dart';
import 'package:comicbookapp/navigation/router.dart';
import 'package:comicbookapp/ui.theme/size_app.dart';
import 'package:comicbookapp/ui.theme/styles/button_style_app.dart';
import 'package:comicbookapp/ui.theme/styles/text_style_app.dart';
import 'package:comicbookapp/ui.theme/theme_app.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    return Theme(
      data: AppThemeData.themeForms,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 165,
                  child: Image.asset(
                    'assets/images/banner.png',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) {
                      return Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              colorScheme.primary,
                              colorScheme.secondary,
                              colorScheme.tertiary,
                            ],
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.auto_stories_rounded,
                          color: colorScheme.onPrimary,
                          size: 70,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: sizeSpaceW,
                    vertical: 30,
                  ),
                  child: Column(
                    children: [
                      Text(
                        appLocalizations.welcome,
                        textAlign: TextAlign.center,
                        style: textStyleBlack.h226.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        appLocalizations.getStarted,
                        textAlign: TextAlign.center,
                        style: textStyleBlack.paragraph16.copyWith(
                          color: colorScheme.secondary,
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: appLocalizations.hintEmail,
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: colorScheme.primary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextField(
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: appLocalizations.hintPassword,
                          prefixIcon: Icon(
                            Icons.lock_outline_rounded,
                            color: colorScheme.primary,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off_outlined,
                            color: colorScheme.primary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        height: sizeButton.height,
                        child: ElevatedButton.icon(
                          onPressed: () => Navigator.pushNamed(context, signupPage),
                          icon: Icon(
                            Icons.login_rounded,
                            color: colorScheme.onPrimary,
                            size: 19,
                          ),
                          label: Text(
                            appLocalizations.signUp.toUpperCase(),
                          ),
                          style: blueButtonStyle.copyWith(
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: double.infinity,
                        height: sizeButton.height,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, homePage);
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: colorScheme.primary,
                            side: BorderSide(
                              color: colorScheme.primary,
                              width: 1.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            textStyle: textStyleBlack.h214,
                          ),
                          child: Text(appLocalizations.signIn),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
