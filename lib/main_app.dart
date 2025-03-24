import 'package:flutter/material.dart';
import 'package:flutter_final/core/routes/go_router_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var localizationDelegate = LocalizedApp.of(context).delegate;
    final goRouter = ref.watch(goRouterProvider);
    return LocalizationProvider(
      state: LocalizationProvider.of(context).state,
      child: MaterialApp.router(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          localizationDelegate,
        ],
        supportedLocales: localizationDelegate.supportedLocales,
        locale: localizationDelegate.currentLocale,

        onGenerateTitle: (context) => translate('app_bar.title'),
        theme: ThemeData(primarySwatch: Colors.blue),
        routerConfig: goRouter,
      ),
    );
  }
}
