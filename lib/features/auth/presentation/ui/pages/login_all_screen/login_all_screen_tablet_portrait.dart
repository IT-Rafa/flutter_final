import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginAllScreenTabletPortrait extends ConsumerStatefulWidget {
  const LoginAllScreenTabletPortrait({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      LoginAllScreenTabletPortraitState();
}

class LoginAllScreenTabletPortraitState
    extends ConsumerState<LoginAllScreenTabletPortrait> {
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
