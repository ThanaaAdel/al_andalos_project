// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `The Name of Students`
  String get students_name {
    return Intl.message(
      'The Name of Students',
      name: 'students_name',
      desc: '',
      args: [],
    );
  }

  /// `Let's find the "A" with us`
  String get description_text_in_image_on_boarding_screen {
    return Intl.message(
      'Let\'s find the "A" with us',
      name: 'description_text_in_image_on_boarding_screen',
      desc: '',
      args: [],
    );
  }

  /// `Please Sign in to view personalized \n recommendations`
  String get text_in_onboarding_screen {
    return Intl.message(
      'Please Sign in to view personalized \n recommendations',
      name: 'text_in_onboarding_screen',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get go_started_button {
    return Intl.message(
      'Get Started',
      name: 'go_started_button',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_button {
    return Intl.message(
      'Login',
      name: 'login_button',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Condition`
  String get terms_and_condition {
    return Intl.message(
      'Terms & Condition',
      name: 'terms_and_condition',
      desc: '',
      args: [],
    );
  }

  /// `By Logging , You Agree to Us`
  String get by_logging_you_agree {
    return Intl.message(
      'By Logging , You Agree to Us',
      name: 'by_logging_you_agree',
      desc: '',
      args: [],
    );
  }

  /// `And`
  String get and {
    return Intl.message(
      'And',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Positive Points`
  String get positive_points {
    return Intl.message(
      'Positive Points',
      name: 'positive_points',
      desc: '',
      args: [],
    );
  }

  /// `Negative Points`
  String get negative_points {
    return Intl.message(
      'Negative Points',
      name: 'negative_points',
      desc: '',
      args: [],
    );
  }

  /// `Total Points`
  String get total_points {
    return Intl.message(
      'Total Points',
      name: 'total_points',
      desc: '',
      args: [],
    );
  }

  /// `School Rank`
  String get school_rank {
    return Intl.message(
      'School Rank',
      name: 'school_rank',
      desc: '',
      args: [],
    );
  }

  /// `Row Rank`
  String get row_rank {
    return Intl.message(
      'Row Rank',
      name: 'row_rank',
      desc: '',
      args: [],
    );
  }

  /// `Room Rank`
  String get room_rank {
    return Intl.message(
      'Room Rank',
      name: 'room_rank',
      desc: '',
      args: [],
    );
  }

  /// `Good Evening!`
  String get good_evening {
    return Intl.message(
      'Good Evening!',
      name: 'good_evening',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
