/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 66 (33 per locale)
///
/// Built on 2025-02-05 at 00:42 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	he(languageCode: 'he', build: _StringsHe.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get add_category => 'Add category';
	String get add_item => 'Add item';
	String get category_added => 'Category added successfully';
	String get category_exist => 'Category already exists';
	String get category_name => 'category name';
	String get date => 'date';
	String get email_address => 'email address';
	String get email_invalid => 'The email address is invalid';
	String get error_occurred => 'An error occurred, please try again later.';
	String get first_name => 'First name';
	String greeting({required Object name}) => 'Welcome ${name}';
	String get home_screen => 'Home Screen';
	String get last_name => 'Last name';
	String get login_screen => 'Login Screen';
	String get login_with_email => 'Login with email';
	String get login_with_google => 'Login with Google';
	String get logout => 'Logout';
	String get no_categories => 'There are no categories, please add one.';
	String get no_items_added => 'No items added';
	String get or_login_with => 'or login with';
	String get password => 'password';
	String get pasword_least_6_chars => 'The password must contain at least 6 characters';
	String get required_email => 'Required to fill in an email address';
	String get required_password => 'Required to fill in an password';
	String get save => 'save';
	String get sure_logout => 'Are you sure you want to logout';
	String get user_details => 'User details';
	String get delete => 'Delete';
	String get edit => 'Edit';
	String get edit_item => 'Edit item';
	String get sure_delete_item => 'Are you sure you want to delete this item';
	String edit_category_name({required Object name}) => 'Edit category "${name}"';
	String get sure_delete_category => 'Are you sure you want to delete this category';
}

// Path: <root>
class _StringsHe implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsHe.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.he,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <he>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsHe _root = this; // ignore: unused_field

	// Translations
	@override String get add_category => 'הוסף קטגוריה';
	@override String get add_item => 'הוסף פריט';
	@override String get category_added => 'הקטגוריה הוספה בהצלחה';
	@override String get category_exist => 'קטגוריה כבר קיימת';
	@override String get category_name => 'שם הקטגוריה';
	@override String get date => 'תאריך';
	@override String get email_address => 'כתובת מייל';
	@override String get email_invalid => 'כתובת המייל אינה חוקית';
	@override String get error_occurred => 'אירעה שגיאה, נא נסה שנית מאוחר יותר';
	@override String get first_name => 'שם פרטי';
	@override String greeting({required Object name}) => 'ברוך הבא ${name}';
	@override String get home_screen => 'מסך הבית';
	@override String get last_name => 'שם משפחה';
	@override String get login_screen => 'בדיקה התחברות';
	@override String get login_with_email => 'התחבר עם מייל';
	@override String get login_with_google => 'התחבר עם גוגל';
	@override String get logout => 'התנתק';
	@override String get no_categories => 'אין קטגוריות, נא הוסף';
	@override String get no_items_added => 'לא הוספו פריטים';
	@override String get or_login_with => 'או התחבר עם';
	@override String get password => 'סיסמה';
	@override String get pasword_least_6_chars => 'הסיסמה חייבת להכיל לפחות 6 תווים';
	@override String get required_email => 'חובה למלא כתובת מייל';
	@override String get required_password => 'חובה למלא סיסמה';
	@override String get save => 'שמירה';
	@override String get sure_logout => 'אתה בטוח שאתה רוצה להתנתק';
	@override String get user_details => 'פרטי משתמש';
	@override String get delete => 'מחיקה';
	@override String get edit => 'עריכה';
	@override String get edit_item => 'עריכת פריט';
	@override String get sure_delete_item => 'אתה בטוח שאתה רוצה למחוק את הפריט הזה';
	@override String edit_category_name({required Object name}) => 'עריכת קטגוריה "${name}"';
	@override String get sure_delete_category => 'אתה בטוח שאתה רוצה למחוק את הקטגוריה הזו';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'add_category': return 'Add category';
			case 'add_item': return 'Add item';
			case 'category_added': return 'Category added successfully';
			case 'category_exist': return 'Category already exists';
			case 'category_name': return 'category name';
			case 'date': return 'date';
			case 'email_address': return 'email address';
			case 'email_invalid': return 'The email address is invalid';
			case 'error_occurred': return 'An error occurred, please try again later.';
			case 'first_name': return 'First name';
			case 'greeting': return ({required Object name}) => 'Welcome ${name}';
			case 'home_screen': return 'Home Screen';
			case 'last_name': return 'Last name';
			case 'login_screen': return 'Login Screen';
			case 'login_with_email': return 'Login with email';
			case 'login_with_google': return 'Login with Google';
			case 'logout': return 'Logout';
			case 'no_categories': return 'There are no categories, please add one.';
			case 'no_items_added': return 'No items added';
			case 'or_login_with': return 'or login with';
			case 'password': return 'password';
			case 'pasword_least_6_chars': return 'The password must contain at least 6 characters';
			case 'required_email': return 'Required to fill in an email address';
			case 'required_password': return 'Required to fill in an password';
			case 'save': return 'save';
			case 'sure_logout': return 'Are you sure you want to logout';
			case 'user_details': return 'User details';
			case 'delete': return 'Delete';
			case 'edit': return 'Edit';
			case 'edit_item': return 'Edit item';
			case 'sure_delete_item': return 'Are you sure you want to delete this item';
			case 'edit_category_name': return ({required Object name}) => 'Edit category "${name}"';
			case 'sure_delete_category': return 'Are you sure you want to delete this category';
			default: return null;
		}
	}
}

extension on _StringsHe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'add_category': return 'הוסף קטגוריה';
			case 'add_item': return 'הוסף פריט';
			case 'category_added': return 'הקטגוריה הוספה בהצלחה';
			case 'category_exist': return 'קטגוריה כבר קיימת';
			case 'category_name': return 'שם הקטגוריה';
			case 'date': return 'תאריך';
			case 'email_address': return 'כתובת מייל';
			case 'email_invalid': return 'כתובת המייל אינה חוקית';
			case 'error_occurred': return 'אירעה שגיאה, נא נסה שנית מאוחר יותר';
			case 'first_name': return 'שם פרטי';
			case 'greeting': return ({required Object name}) => 'ברוך הבא ${name}';
			case 'home_screen': return 'מסך הבית';
			case 'last_name': return 'שם משפחה';
			case 'login_screen': return 'בדיקה התחברות';
			case 'login_with_email': return 'התחבר עם מייל';
			case 'login_with_google': return 'התחבר עם גוגל';
			case 'logout': return 'התנתק';
			case 'no_categories': return 'אין קטגוריות, נא הוסף';
			case 'no_items_added': return 'לא הוספו פריטים';
			case 'or_login_with': return 'או התחבר עם';
			case 'password': return 'סיסמה';
			case 'pasword_least_6_chars': return 'הסיסמה חייבת להכיל לפחות 6 תווים';
			case 'required_email': return 'חובה למלא כתובת מייל';
			case 'required_password': return 'חובה למלא סיסמה';
			case 'save': return 'שמירה';
			case 'sure_logout': return 'אתה בטוח שאתה רוצה להתנתק';
			case 'user_details': return 'פרטי משתמש';
			case 'delete': return 'מחיקה';
			case 'edit': return 'עריכה';
			case 'edit_item': return 'עריכת פריט';
			case 'sure_delete_item': return 'אתה בטוח שאתה רוצה למחוק את הפריט הזה';
			case 'edit_category_name': return ({required Object name}) => 'עריכת קטגוריה "${name}"';
			case 'sure_delete_category': return 'אתה בטוח שאתה רוצה למחוק את הקטגוריה הזו';
			default: return null;
		}
	}
}
