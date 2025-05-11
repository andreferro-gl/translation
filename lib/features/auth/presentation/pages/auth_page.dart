import 'package:flutter/material.dart';
import 'package:internationalization_app/shared/navigator/navigator_poc.dart';
import '../../../../i18n/translations.g.dart';
import '../../../home/presentation/pages/home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(t.auth.appBarTitle)),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Text(t.auth.welcome, style: TextStyle(fontSize: 20)),
            const SizedBox(height: 40),
            TextFormField(
              decoration: InputDecoration(
                labelText: t.auth.labelPassword,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: t.auth.labelEmail,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${t.auth.forgotPassword} ',
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  TextSpan(
                    text: t.auth.recoverNow,
                    style: const TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  NavigatorPoc.push(context, HomePage());
                },
                child: Text(t.auth.buttonLogin),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
