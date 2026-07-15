import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  String get helloWorld;
  String get signIn;
  String get signUp;
  String get next;
  String get previous;
  String get welcome;
  String get getStarted;
  String get hintEmail;
  String get hintPassword;
  String get register;
  String get detailRegister;
  String get hintName;
  String get labelName;
  String get labelEmail;
  String get labelPassword;

  String get appName;
  String get splashSubtitle;

  String get navCatalog;
  String get navUpload;
  String get navProfile;
  String get navHome;
  String get navLibrary;
  String get navFavorites;

  String get searchHint;

  String get catAll;
  String get catAction;
  String get catSciFi;
  String get catManga;
  String get catFantasy;

  String get comicBadgeAvailable;
  String get comicBadgeNext;

  String get formTitle;
  String get formTitleHint;
  String get formEditorial;
  String get formEditorialHint;
  String get formNumTomos;
  String get formGenero;
  String get formDescripcion;
  String get formDescripcionHint;
  String get formTipo;
  String get formPdfLabel;
  String get formPdfButton;
  String get formSubmit;
  String get formCancel;

  String get genreSuperhero;
  String get genreManga;
  String get genreSciFi;
  String get genreHorror;
  String get genreFantasy;
  String get genreRomance;

  String get typeGraphicNovel;
  String get typeManga;
  String get typeOneShot;
  String get typeMiniSerie;
  String get typeSerieOngoing;

  String get profileTitle;
  String get profileCatalogs;
  String get profilePublication;
  String get profileOnlineUsers;
  String get profileEditComics;
  String get ageLabel;
  String get typeLabel;
  String get versionName;

  String get collectorIdentity;
  String get serialId;
  String get archiveReference;
  String get savePdf;
  String get regTemplate;
  String get regTemplateDesc;
  String get dateCreated;
  String get location;
  String get address;
  String get exportNote;

  String get hintFirstName;
  String get labelFirstName;
  String get hintLastName;
  String get labelLastName;
  String get labelUsername;

  String get errorRoute;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
