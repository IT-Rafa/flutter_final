import 'package:flutter/material.dart';
import 'package:flutter_final/core/routes/go_router_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Initialize localization delegate
    var localizationDelegate = LocalizedApp.of(context).delegate;
    // Initialize the GoRouter provider
    final goRouter = ref.watch(goRouterProvider);
    // Initialize the localization provider
    return LocalizationProvider(
      state: LocalizationProvider.of(context).state,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,

        theme: ThemeData.light(), //light theme
        darkTheme: ThemeData.dark(), //dark theme

        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          localizationDelegate,
        ],
        supportedLocales: localizationDelegate.supportedLocales,
        locale: localizationDelegate.currentLocale,
        onGenerateTitle: (context) => translate('app_bar.title'),
        routerConfig: goRouter,
      ),
    );
  }
}
