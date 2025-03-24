import 'package:flutter/material.dart';
import 'package:flutter_final/main_app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_translate/flutter_translate.dart';

Future<void> main() async {
  var delegate = await LocalizationDelegate.create(
    fallbackLocale: 'en',
    supportedLocales: ['en', 'es', 'fa'],
  );
  runApp(
    /// [MyApp] is wrapped in a [ProviderScope].
    /// This widget is where the state of most of our providers will be stored.
    /// This replaces `MultiProvider` if you've used `provider` before.
    ProviderScope(child: LocalizedApp(delegate, MainApp())),
  );
}
