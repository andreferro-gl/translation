import 'package:flutter/material.dart';

import '../../../../i18n/translations.g.dart';
import '../../../../shared/navigator/navigator_poc.dart';
import '../../../../shared/widgets/language_selector.dart';
import '../../../auth/presentation/pages/auth_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(t.splash.appTitle)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 40),

              Text(
                t.splash.brand,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              Text(t.splash.welcome),
              const SizedBox(height: 40),
              Text(t.splash.description, textAlign: TextAlign.center),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    t.splash.availableLanguages,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 10),
                  LanguageSelector(
                    onChanged: (code) async {
                      await LocaleSettings.setLocaleRaw(code);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ElevatedButton(
            onPressed: () {
              NavigatorPoc.push(context, const AuthPage());
            },
            child: Text(t.splash.goToAuth),
          ),
        ),
      ),
    );
  }
}
