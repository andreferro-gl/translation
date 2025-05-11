import 'dart:math';

import 'package:flutter/material.dart';
import 'package:internationalization_app/shared/widgets/language_selector.dart';

import '../../../../i18n/translations.g.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Random _random = Random();
  ErrorType _errorType = ErrorType.notFound;

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(t.home.title),
        actions: [
          LanguageSelector(
            onChanged: (code) async {
              await LocaleSettings.setLocaleRaw(code);
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Text(
                t.home.welcome,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              Text(t.home.description),
              const SizedBox(height: 40),
              Text(t.home.errorsTitle, textAlign: TextAlign.center),
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.red.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red),
                ),
                child: Text(
                  t.home.error[_errorType.name] ?? '',
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  _errorType =
                      ErrorType.values[_random.nextInt(
                        ErrorType.values.length,
                      )];
                  setState(() {});
                },
                child: Text(t.home.changeError),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum ErrorType { network, server, notFound }
