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
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text(translate('login.title'))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            ElevatedButton(
              style: flatButtonStyle,
              onPressed: () {
                // Handle login action
              },
              child: Text(translate('login.button')),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: flatButtonStyle,
              onPressed: () {
                // Handle login action
              },
              child: Text(translate('login.button')),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle login action
              },
              child: Text(translate('login.button')),
            ),
          ],
        ),
      ),
    );
  }
}
