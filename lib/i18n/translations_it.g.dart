///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsIt = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsAuthIt auth = TranslationsAuthIt.internal(_root);
	late final TranslationsHomeIt home = TranslationsHomeIt.internal(_root);
	late final TranslationsSplashIt splash = TranslationsSplashIt.internal(_root);
}

// Path: auth
class TranslationsAuthIt {
	TranslationsAuthIt.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appTitle => 'Esempio di Login';
	String get appBarTitle => 'Accesso';
	String get labelEmail => 'Email';
	String get labelPassword => 'Password';
	String get welcome => 'Benvenuto nell’Esempio di Login!';
	String get buttonLogin => 'Accedi';
	String get forgotPassword => 'Password dimenticata?';
	String get recoverNow => 'Recupera ora';
	String get signUp => 'Registrati';
}

// Path: home
class TranslationsHomeIt {
	TranslationsHomeIt.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Home';
	String get welcome => 'Benvenuto nella Home Page';
	String get description => 'Questa è la pagina principale dell\'applicazione.';
	late final TranslationsHomeButtonIt button = TranslationsHomeButtonIt.internal(_root);
	String get errorsTitle => 'Esempi di gestione degli errori o delle risposte dal backend';
	String get changeError => 'Cambia errore';
	Map<String, String> get error => {
		'network': 'Non siamo riusciti a stabilire la tua connessione. Per favore riprova più tardi.',
		'server': 'Si è verificato un errore del server. Contatta il nostro team di supporto via e-mail: support@guildliving.com.',
		'notFound': 'La risorsa richiesta non è stata trovata.',
	};
}

// Path: splash
class TranslationsSplashIt {
	TranslationsSplashIt.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appTitle => 'App di internazionalizzazione';
	String get brand => 'GuildLiving';
	String get welcome => 'Benvenuto nell’App di internazionalizzazione!';
	String get description => 'Questa è una prova di concetto che mostra il nostro sistema di traduzione integrato nell’app.';
	String get availableLanguages => 'Lingue disponibili:';
	String get goToAuth => 'Vai alla pagina di autenticazione';
}

// Path: home.button
class TranslationsHomeButtonIt {
	TranslationsHomeButtonIt.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get clickMe => 'Cliccami';
	String get submit => 'Invia';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'auth.appTitle': return 'Esempio di Login';
			case 'auth.appBarTitle': return 'Accesso';
			case 'auth.labelEmail': return 'Email';
			case 'auth.labelPassword': return 'Password';
			case 'auth.welcome': return 'Benvenuto nell’Esempio di Login!';
			case 'auth.buttonLogin': return 'Accedi';
			case 'auth.forgotPassword': return 'Password dimenticata?';
			case 'auth.recoverNow': return 'Recupera ora';
			case 'auth.signUp': return 'Registrati';
			case 'home.title': return 'Home';
			case 'home.welcome': return 'Benvenuto nella Home Page';
			case 'home.description': return 'Questa è la pagina principale dell\'applicazione.';
			case 'home.button.clickMe': return 'Cliccami';
			case 'home.button.submit': return 'Invia';
			case 'home.errorsTitle': return 'Esempi di gestione degli errori o delle risposte dal backend';
			case 'home.changeError': return 'Cambia errore';
			case 'home.error.network': return 'Non siamo riusciti a stabilire la tua connessione. Per favore riprova più tardi.';
			case 'home.error.server': return 'Si è verificato un errore del server. Contatta il nostro team di supporto via e-mail: support@guildliving.com.';
			case 'home.error.notFound': return 'La risorsa richiesta non è stata trovata.';
			case 'splash.appTitle': return 'App di internazionalizzazione';
			case 'splash.brand': return 'GuildLiving';
			case 'splash.welcome': return 'Benvenuto nell’App di internazionalizzazione!';
			case 'splash.description': return 'Questa è una prova di concetto che mostra il nostro sistema di traduzione integrato nell’app.';
			case 'splash.availableLanguages': return 'Lingue disponibili:';
			case 'splash.goToAuth': return 'Vai alla pagina di autenticazione';
			default: return null;
		}
	}
}

