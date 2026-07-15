import 'package:comicbookapp/l10n/app_localizations.dart';
import 'package:comicbookapp/navigation/router.dart';
import 'package:comicbookapp/presentation/screens/home/home_page.dart';
import 'package:comicbookapp/presentation/screens/modals/detail_comic.dart';
import 'package:comicbookapp/presentation/screens/modals/upload_pdf.dart';
import 'package:comicbookapp/presentation/screens/pages/catalog_page.dart';
import 'package:comicbookapp/presentation/screens/pages/profile_page.dart';
import 'package:comicbookapp/presentation/screens/pages/upload_page.dart';
import 'package:comicbookapp/presentation/screens/session/sign_in_page.dart';
import 'package:comicbookapp/presentation/screens/session/sign_up_page.dart';
import 'package:comicbookapp/presentation/screens/splash/splash_page.dart';
import 'package:comicbookapp/presentation/screens/welcome/welcome_page.dart';
import 'package:comicbookapp/ui.theme/size_app.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
            settings: settings,
            fullscreenDialog: true,
            builder: (_)=> const SplashPage());

        case homePage:
        return MaterialPageRoute(
            settings: settings,
            builder: (_)=>const HomePage());
      case signupPage:
        return MaterialPageRoute(
            settings: settings,
            builder: (_)=>const SignUpPage());
      case welcomePage:
        return MaterialPageRoute(
            settings: settings,
            builder: (_)=>const WelcomePage());
      case signinPage:
        return MaterialPageRoute(
            settings: settings,
            builder: (_)=>const SignInPage());
      case uploadPage:
        return MaterialPageRoute(
            settings: settings,
            builder: (_)=>const UploadPage());
      case profilePage:
        return MaterialPageRoute(
            settings: settings,
            builder: (_)=>const ProfilePage());
      case catalogPage:
        return MaterialPageRoute(
            settings: settings,
            builder: (_)=>const CatalogPage());
      case uploadPdfPage:
        return MaterialPageRoute(
            settings: settings,
            builder: (_)=>const UploadPdf());
      case detailComic:
        return MaterialPageRoute(
            settings: settings,
            builder: (_)=>const ComicDetailPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      final appLocalizations = AppLocalizations.of(context);
      return Scaffold(
        appBar: AppBar(
          title: Text(appLocalizations?.errorRoute ?? 'Error'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            appLocalizations?.errorRoute ?? 'Error! Page not found',
            style: TextStyle(
              color: Theme.of(context).colorScheme.error,
              fontSize: sizeTextParagraph16,
            ),
          ),
        ),
      );
    });
  }

}
