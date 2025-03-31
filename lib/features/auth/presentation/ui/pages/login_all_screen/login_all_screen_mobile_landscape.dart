import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginAllScreenMobileLandscape extends ConsumerStatefulWidget {
  const LoginAllScreenMobileLandscape({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      LoginAllScreenMobileLandscapeState();
}

class LoginAllScreenMobileLandscapeState
    extends ConsumerState<LoginAllScreenMobileLandscape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(translate('app_bar.title'))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text(translate('app_bar.title'))],
        ),
      ),
    );
  }
}
