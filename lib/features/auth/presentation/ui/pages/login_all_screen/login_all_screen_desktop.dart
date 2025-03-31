import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginAllScreenDesktop extends ConsumerStatefulWidget {
  const LoginAllScreenDesktop({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      LoginAllScreenDesktopState();
}

class LoginAllScreenDesktopState extends ConsumerState<LoginAllScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Desktop")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text(translate('app_bar.title'))],
        ),
      ),
    );
  }
}
