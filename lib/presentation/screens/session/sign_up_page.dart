import 'package:comicbookapp/l10n/app_localizations.dart';
import 'package:comicbookapp/navigation/router.dart';
import 'package:comicbookapp/ui.theme/size_app.dart';
import 'package:comicbookapp/ui.theme/styles/button_style_app.dart';
import 'package:comicbookapp/ui.theme/styles/text_style_app.dart';
import 'package:comicbookapp/ui.theme/theme_app.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                    errorBuilder: (_, _, _) {
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
                        appLocalizations.register,
                        textAlign: TextAlign.center,
                        style: textStyleBlack.h226.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        appLocalizations.detailRegister,
                        textAlign: TextAlign.center,
                        style: textStyleBlack.paragraph16.copyWith(
                          color: colorScheme.secondary,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: _firstNameController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: appLocalizations.hintFirstName,
                          labelText: appLocalizations.labelFirstName,
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: colorScheme.primary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextField(
                        controller: _lastNameController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: appLocalizations.hintLastName,
                          labelText: appLocalizations.labelLastName,
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: colorScheme.primary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextField(
                        controller: _usernameController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: appLocalizations.hintName,
                          labelText: appLocalizations.labelUsername,
                          prefixIcon: Icon(
                            Icons.badge_outlined,
                            color: colorScheme.primary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: appLocalizations.hintEmail,
                          labelText: appLocalizations.labelEmail,
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: colorScheme.primary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      TextField(
                        controller: _passwordController,
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: appLocalizations.hintPassword,
                          labelText: appLocalizations.labelPassword,
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
                          onPressed: () {
                            Navigator.pushNamed(context, homePage);
                          },
                          icon: Icon(
                            Icons.person_add_rounded,
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
                            Navigator.pushNamed(context, signinPage);
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
