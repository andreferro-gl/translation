import 'package:flutter/material.dart';
import 'package:internationalization_app/i18n/translations.g.dart';

class LanguageItem {
  final String code;
  final String flag;
  const LanguageItem({required this.code, required this.flag});
}

class LanguageSelector extends StatefulWidget {
  final Function(String)? onChanged;

  const LanguageSelector({this.onChanged, super.key});

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  final List<LanguageItem> items = const [
    LanguageItem(code: 'en', flag: '🇺🇸'),
    LanguageItem(code: 'it', flag: '🇮🇹'),
  ];

  void _pick(String code) {
    widget.onChanged?.call(code);
  }

  @override
  Widget build(BuildContext context) {
    final current = LocaleSettings.currentLocale.languageCode;
    final selected = items.firstWhere((i) => i.code == current);
    return PopupMenuButton<String>(
      icon: Row(
        children: [
          Text(selected.flag),
          const SizedBox(width: 8),
          Text(selected.code.toUpperCase()),
        ],
      ),
      color: Colors.white,
      onSelected: _pick,
      iconSize: 60,
      itemBuilder: (_) {
        return items.map((i) {
          return PopupMenuItem<String>(
            value: i.code,
            child: Row(
              children: [
                Text(i.flag),
                const SizedBox(width: 8),
                Text(i.code.toUpperCase()),
              ],
            ),
          );
        }).toList();
      },
    );
  }
}
