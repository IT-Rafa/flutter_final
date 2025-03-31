import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginAllScreenTabletLandscape extends ConsumerStatefulWidget {
  const LoginAllScreenTabletLandscape({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LoginAllScreenTabletState();
}

class _LoginAllScreenTabletState
    extends ConsumerState<LoginAllScreenTabletLandscape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tablet Landscape")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text(translate('app_bar.title'))],
        ),
      ),
    );
  }
}
