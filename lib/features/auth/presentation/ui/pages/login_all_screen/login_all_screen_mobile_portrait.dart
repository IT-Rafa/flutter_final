import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginAllScreenMobilePortrait extends ConsumerStatefulWidget {
  const LoginAllScreenMobilePortrait({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LoginAllScreenMobilePortraitState();
}

class _LoginAllScreenMobilePortraitState
    extends ConsumerState<LoginAllScreenMobilePortrait> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mobile Portrait")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text(translate('app_bar.title'))],
        ),
      ),
    );
  }
}
