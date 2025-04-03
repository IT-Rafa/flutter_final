import 'package:flutter/material.dart';
import 'package:flutter_final/main_app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:splash_master/core/splash_master.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';
import 'package:talker/talker.dart';
import 'package:talker_flutter/talker_flutter.dart';

final talker = Talker();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // prevents flutter frames from rendering until initialization is complete
  SplashMaster.initialize();
  talker.info('App is started');
  var delegate = await LocalizationDelegate.create(
    fallbackLocale: 'en',
    supportedLocales: ['en', 'es', 'fa'],
  );

  runApp(
    /// [MyApp] is wrapped in a [ProviderScope].
    /// This widget is where the state of most of our providers will be stored.
    /// This replaces `MultiProvider` if you've used `provider` before.
    ProviderScope(
      observers: [
        // Logs Riverpod talker events
        TalkerRiverpodObserver(
          talker: talker,
          settings: TalkerRiverpodLoggerSettings(
            enabled: true,
            printProviderAdded: true,
            printProviderUpdated: true,
            printProviderDisposed: true,
            printProviderFailed: true,
          ),
        ),
      ],
      child: LocalizedApp(delegate, MainApp()),
    ),
  );
}
