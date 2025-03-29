import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginAllScreen extends ConsumerStatefulWidget {
  const LoginAllScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginAllScreenState();
}

class _LoginAllScreenState extends ConsumerState<LoginAllScreen> {
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
