import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_translate/flutter_translate.dart';

class LoginAll extends HookConsumerWidget {
  const LoginAll({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(translate('app_bar.title'))),
      body: Center(child: Text(translate('app_bar.title'))),
    );
  }
}
