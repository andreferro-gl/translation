///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsEn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	@override 
	TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAuthEn auth = _TranslationsAuthEn._(_root);
	@override late final _TranslationsHomeEn home = _TranslationsHomeEn._(_root);
	@override late final _TranslationsSplashEn splash = _TranslationsSplashEn._(_root);
}

// Path: auth
class _TranslationsAuthEn extends TranslationsAuthIt {
	_TranslationsAuthEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Login Example';
	@override String get appBarTitle => 'Login';
	@override String get labelEmail => 'Email';
	@override String get labelPassword => 'Password';
	@override String get welcome => 'Welcome to the Login Example!';
	@override String get buttonLogin => 'Login';
	@override String get forgotPassword => 'Forgot Password?';
	@override String get recoverNow => 'Recover Now';
	@override String get signUp => 'Sign Up';
}

// Path: home
class _TranslationsHomeEn extends TranslationsHomeIt {
	_TranslationsHomeEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Home';
	@override String get welcome => 'Welcome to the Home Page';
	@override String get description => 'This is the home page of the application.';
	@override late final _TranslationsHomeButtonEn button = _TranslationsHomeButtonEn._(_root);
	@override String get errorsTitle => 'Examples of handling errors or responses from the backend';
	@override String get changeError => 'Change Error';
	@override Map<String, String> get error => {
		'network': 'We were unable to establish your connection. Please try again later.',
		'server': 'A server error has occurred, please contact our support team via email: support@guildliving.com.',
		'notFound': 'The requested resource was not found.',
	};
}

// Path: splash
class _TranslationsSplashEn extends TranslationsSplashIt {
	_TranslationsSplashEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Internationalization App';
	@override String get brand => 'GuildLiving';
	@override String get welcome => 'Welcome to the Internationalization App!';
	@override String get description => 'This is a proof of concept showcasing our integrated in-app translation system.';
	@override String get availableLanguages => 'Available Languages:';
	@override String get goToAuth => 'Go to Auth Page';
}

// Path: home.button
class _TranslationsHomeButtonEn extends TranslationsHomeButtonIt {
	_TranslationsHomeButtonEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get clickMe => 'Click Me';
	@override String get submit => 'Submit';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'auth.appTitle': return 'Login Example';
			case 'auth.appBarTitle': return 'Login';
			case 'auth.labelEmail': return 'Email';
			case 'auth.labelPassword': return 'Password';
			case 'auth.welcome': return 'Welcome to the Login Example!';
			case 'auth.buttonLogin': return 'Login';
			case 'auth.forgotPassword': return 'Forgot Password?';
			case 'auth.recoverNow': return 'Recover Now';
			case 'auth.signUp': return 'Sign Up';
			case 'home.title': return 'Home';
			case 'home.welcome': return 'Welcome to the Home Page';
			case 'home.description': return 'This is the home page of the application.';
			case 'home.button.clickMe': return 'Click Me';
			case 'home.button.submit': return 'Submit';
			case 'home.errorsTitle': return 'Examples of handling errors or responses from the backend';
			case 'home.changeError': return 'Change Error';
			case 'home.error.network': return 'We were unable to establish your connection. Please try again later.';
			case 'home.error.server': return 'A server error has occurred, please contact our support team via email: support@guildliving.com.';
			case 'home.error.notFound': return 'The requested resource was not found.';
			case 'splash.appTitle': return 'Internationalization App';
			case 'splash.brand': return 'GuildLiving';
			case 'splash.welcome': return 'Welcome to the Internationalization App!';
			case 'splash.description': return 'This is a proof of concept showcasing our integrated in-app translation system.';
			case 'splash.availableLanguages': return 'Available Languages:';
			case 'splash.goToAuth': return 'Go to Auth Page';
			default: return null;
		}
	}
}

