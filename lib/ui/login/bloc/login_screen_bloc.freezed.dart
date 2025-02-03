// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInByGoogle,
    required TResult Function(String email, String password)
        signInByEmailPassword,
    required TResult Function(String firstName, String lastName, File? image)
        saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInByGoogle,
    TResult? Function(String email, String password)? signInByEmailPassword,
    TResult? Function(String firstName, String lastName, File? image)? saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInByGoogle,
    TResult Function(String email, String password)? signInByEmailPassword,
    TResult Function(String firstName, String lastName, File? image)? saveUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInByGoogle value) signInByGoogle,
    required TResult Function(SignInByEmailPassword value)
        signInByEmailPassword,
    required TResult Function(SaveUser value) saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInByGoogle value)? signInByGoogle,
    TResult? Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult? Function(SaveUser value)? saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInByGoogle value)? signInByGoogle,
    TResult Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult Function(SaveUser value)? saveUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenEventCopyWith<$Res> {
  factory $LoginScreenEventCopyWith(
          LoginScreenEvent value, $Res Function(LoginScreenEvent) then) =
      _$LoginScreenEventCopyWithImpl<$Res, LoginScreenEvent>;
}

/// @nodoc
class _$LoginScreenEventCopyWithImpl<$Res, $Val extends LoginScreenEvent>
    implements $LoginScreenEventCopyWith<$Res> {
  _$LoginScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignInByGoogleImplCopyWith<$Res> {
  factory _$$SignInByGoogleImplCopyWith(_$SignInByGoogleImpl value,
          $Res Function(_$SignInByGoogleImpl) then) =
      __$$SignInByGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInByGoogleImplCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$SignInByGoogleImpl>
    implements _$$SignInByGoogleImplCopyWith<$Res> {
  __$$SignInByGoogleImplCopyWithImpl(
      _$SignInByGoogleImpl _value, $Res Function(_$SignInByGoogleImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInByGoogleImpl implements SignInByGoogle {
  const _$SignInByGoogleImpl();

  @override
  String toString() {
    return 'LoginScreenEvent.signInByGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInByGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInByGoogle,
    required TResult Function(String email, String password)
        signInByEmailPassword,
    required TResult Function(String firstName, String lastName, File? image)
        saveUser,
  }) {
    return signInByGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInByGoogle,
    TResult? Function(String email, String password)? signInByEmailPassword,
    TResult? Function(String firstName, String lastName, File? image)? saveUser,
  }) {
    return signInByGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInByGoogle,
    TResult Function(String email, String password)? signInByEmailPassword,
    TResult Function(String firstName, String lastName, File? image)? saveUser,
    required TResult orElse(),
  }) {
    if (signInByGoogle != null) {
      return signInByGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInByGoogle value) signInByGoogle,
    required TResult Function(SignInByEmailPassword value)
        signInByEmailPassword,
    required TResult Function(SaveUser value) saveUser,
  }) {
    return signInByGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInByGoogle value)? signInByGoogle,
    TResult? Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult? Function(SaveUser value)? saveUser,
  }) {
    return signInByGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInByGoogle value)? signInByGoogle,
    TResult Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult Function(SaveUser value)? saveUser,
    required TResult orElse(),
  }) {
    if (signInByGoogle != null) {
      return signInByGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInByGoogle implements LoginScreenEvent {
  const factory SignInByGoogle() = _$SignInByGoogleImpl;
}

/// @nodoc
abstract class _$$SignInByEmailPasswordImplCopyWith<$Res> {
  factory _$$SignInByEmailPasswordImplCopyWith(
          _$SignInByEmailPasswordImpl value,
          $Res Function(_$SignInByEmailPasswordImpl) then) =
      __$$SignInByEmailPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInByEmailPasswordImplCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$SignInByEmailPasswordImpl>
    implements _$$SignInByEmailPasswordImplCopyWith<$Res> {
  __$$SignInByEmailPasswordImplCopyWithImpl(_$SignInByEmailPasswordImpl _value,
      $Res Function(_$SignInByEmailPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInByEmailPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInByEmailPasswordImpl implements SignInByEmailPassword {
  const _$SignInByEmailPasswordImpl(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginScreenEvent.signInByEmailPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInByEmailPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInByEmailPasswordImplCopyWith<_$SignInByEmailPasswordImpl>
      get copyWith => __$$SignInByEmailPasswordImplCopyWithImpl<
          _$SignInByEmailPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInByGoogle,
    required TResult Function(String email, String password)
        signInByEmailPassword,
    required TResult Function(String firstName, String lastName, File? image)
        saveUser,
  }) {
    return signInByEmailPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInByGoogle,
    TResult? Function(String email, String password)? signInByEmailPassword,
    TResult? Function(String firstName, String lastName, File? image)? saveUser,
  }) {
    return signInByEmailPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInByGoogle,
    TResult Function(String email, String password)? signInByEmailPassword,
    TResult Function(String firstName, String lastName, File? image)? saveUser,
    required TResult orElse(),
  }) {
    if (signInByEmailPassword != null) {
      return signInByEmailPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInByGoogle value) signInByGoogle,
    required TResult Function(SignInByEmailPassword value)
        signInByEmailPassword,
    required TResult Function(SaveUser value) saveUser,
  }) {
    return signInByEmailPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInByGoogle value)? signInByGoogle,
    TResult? Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult? Function(SaveUser value)? saveUser,
  }) {
    return signInByEmailPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInByGoogle value)? signInByGoogle,
    TResult Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult Function(SaveUser value)? saveUser,
    required TResult orElse(),
  }) {
    if (signInByEmailPassword != null) {
      return signInByEmailPassword(this);
    }
    return orElse();
  }
}

abstract class SignInByEmailPassword implements LoginScreenEvent {
  const factory SignInByEmailPassword(
      {required final String email,
      required final String password}) = _$SignInByEmailPasswordImpl;

  String get email;
  String get password;

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInByEmailPasswordImplCopyWith<_$SignInByEmailPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveUserImplCopyWith<$Res> {
  factory _$$SaveUserImplCopyWith(
          _$SaveUserImpl value, $Res Function(_$SaveUserImpl) then) =
      __$$SaveUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName, String lastName, File? image});
}

/// @nodoc
class __$$SaveUserImplCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$SaveUserImpl>
    implements _$$SaveUserImplCopyWith<$Res> {
  __$$SaveUserImplCopyWithImpl(
      _$SaveUserImpl _value, $Res Function(_$SaveUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? image = freezed,
  }) {
    return _then(_$SaveUserImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$SaveUserImpl implements SaveUser {
  const _$SaveUserImpl(
      {required this.firstName, required this.lastName, this.image});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final File? image;

  @override
  String toString() {
    return 'LoginScreenEvent.saveUser(firstName: $firstName, lastName: $lastName, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveUserImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, image);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveUserImplCopyWith<_$SaveUserImpl> get copyWith =>
      __$$SaveUserImplCopyWithImpl<_$SaveUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInByGoogle,
    required TResult Function(String email, String password)
        signInByEmailPassword,
    required TResult Function(String firstName, String lastName, File? image)
        saveUser,
  }) {
    return saveUser(firstName, lastName, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInByGoogle,
    TResult? Function(String email, String password)? signInByEmailPassword,
    TResult? Function(String firstName, String lastName, File? image)? saveUser,
  }) {
    return saveUser?.call(firstName, lastName, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInByGoogle,
    TResult Function(String email, String password)? signInByEmailPassword,
    TResult Function(String firstName, String lastName, File? image)? saveUser,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(firstName, lastName, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInByGoogle value) signInByGoogle,
    required TResult Function(SignInByEmailPassword value)
        signInByEmailPassword,
    required TResult Function(SaveUser value) saveUser,
  }) {
    return saveUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInByGoogle value)? signInByGoogle,
    TResult? Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult? Function(SaveUser value)? saveUser,
  }) {
    return saveUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInByGoogle value)? signInByGoogle,
    TResult Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult Function(SaveUser value)? saveUser,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(this);
    }
    return orElse();
  }
}

abstract class SaveUser implements LoginScreenEvent {
  const factory SaveUser(
      {required final String firstName,
      required final String lastName,
      final File? image}) = _$SaveUserImpl;

  String get firstName;
  String get lastName;
  File? get image;

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveUserImplCopyWith<_$SaveUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() refreshUI,
    required TResult Function() navigateHome,
    required TResult Function() navigateFillDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? refreshUI,
    TResult? Function()? navigateHome,
    TResult? Function()? navigateFillDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? refreshUI,
    TResult Function()? navigateHome,
    TResult Function()? navigateFillDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginScreenInitial value) initial,
    required TResult Function(_LoginScreenLoading value) loading,
    required TResult Function(_LoginScreenRefreshUI value) refreshUI,
    required TResult Function(_LoginScreenNavigateHome value) navigateHome,
    required TResult Function(_LoginScreenNavigateFillDetails value)
        navigateFillDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginScreenInitial value)? initial,
    TResult? Function(_LoginScreenLoading value)? loading,
    TResult? Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult? Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult? Function(_LoginScreenNavigateFillDetails value)?
        navigateFillDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginScreenInitial value)? initial,
    TResult Function(_LoginScreenLoading value)? loading,
    TResult Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult Function(_LoginScreenNavigateFillDetails value)?
        navigateFillDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenStateCopyWith<$Res> {
  factory $LoginScreenStateCopyWith(
          LoginScreenState value, $Res Function(LoginScreenState) then) =
      _$LoginScreenStateCopyWithImpl<$Res, LoginScreenState>;
}

/// @nodoc
class _$LoginScreenStateCopyWithImpl<$Res, $Val extends LoginScreenState>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginScreenInitialImplCopyWith<$Res> {
  factory _$$LoginScreenInitialImplCopyWith(_$LoginScreenInitialImpl value,
          $Res Function(_$LoginScreenInitialImpl) then) =
      __$$LoginScreenInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenInitialImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenInitialImpl>
    implements _$$LoginScreenInitialImplCopyWith<$Res> {
  __$$LoginScreenInitialImplCopyWithImpl(_$LoginScreenInitialImpl _value,
      $Res Function(_$LoginScreenInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginScreenInitialImpl implements _LoginScreenInitial {
  const _$LoginScreenInitialImpl();

  @override
  String toString() {
    return 'LoginScreenState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginScreenInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() refreshUI,
    required TResult Function() navigateHome,
    required TResult Function() navigateFillDetails,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? refreshUI,
    TResult? Function()? navigateHome,
    TResult? Function()? navigateFillDetails,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? refreshUI,
    TResult Function()? navigateHome,
    TResult Function()? navigateFillDetails,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginScreenInitial value) initial,
    required TResult Function(_LoginScreenLoading value) loading,
    required TResult Function(_LoginScreenRefreshUI value) refreshUI,
    required TResult Function(_LoginScreenNavigateHome value) navigateHome,
    required TResult Function(_LoginScreenNavigateFillDetails value)
        navigateFillDetails,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginScreenInitial value)? initial,
    TResult? Function(_LoginScreenLoading value)? loading,
    TResult? Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult? Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult? Function(_LoginScreenNavigateFillDetails value)?
        navigateFillDetails,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginScreenInitial value)? initial,
    TResult Function(_LoginScreenLoading value)? loading,
    TResult Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult Function(_LoginScreenNavigateFillDetails value)?
        navigateFillDetails,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoginScreenInitial implements LoginScreenState {
  const factory _LoginScreenInitial() = _$LoginScreenInitialImpl;
}

/// @nodoc
abstract class _$$LoginScreenLoadingImplCopyWith<$Res> {
  factory _$$LoginScreenLoadingImplCopyWith(_$LoginScreenLoadingImpl value,
          $Res Function(_$LoginScreenLoadingImpl) then) =
      __$$LoginScreenLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenLoadingImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenLoadingImpl>
    implements _$$LoginScreenLoadingImplCopyWith<$Res> {
  __$$LoginScreenLoadingImplCopyWithImpl(_$LoginScreenLoadingImpl _value,
      $Res Function(_$LoginScreenLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginScreenLoadingImpl implements _LoginScreenLoading {
  const _$LoginScreenLoadingImpl();

  @override
  String toString() {
    return 'LoginScreenState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginScreenLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() refreshUI,
    required TResult Function() navigateHome,
    required TResult Function() navigateFillDetails,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? refreshUI,
    TResult? Function()? navigateHome,
    TResult? Function()? navigateFillDetails,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? refreshUI,
    TResult Function()? navigateHome,
    TResult Function()? navigateFillDetails,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginScreenInitial value) initial,
    required TResult Function(_LoginScreenLoading value) loading,
    required TResult Function(_LoginScreenRefreshUI value) refreshUI,
    required TResult Function(_LoginScreenNavigateHome value) navigateHome,
    required TResult Function(_LoginScreenNavigateFillDetails value)
        navigateFillDetails,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginScreenInitial value)? initial,
    TResult? Function(_LoginScreenLoading value)? loading,
    TResult? Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult? Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult? Function(_LoginScreenNavigateFillDetails value)?
        navigateFillDetails,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginScreenInitial value)? initial,
    TResult Function(_LoginScreenLoading value)? loading,
    TResult Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult Function(_LoginScreenNavigateFillDetails value)?
        navigateFillDetails,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoginScreenLoading implements LoginScreenState {
  const factory _LoginScreenLoading() = _$LoginScreenLoadingImpl;
}

/// @nodoc
abstract class _$$LoginScreenRefreshUIImplCopyWith<$Res> {
  factory _$$LoginScreenRefreshUIImplCopyWith(_$LoginScreenRefreshUIImpl value,
          $Res Function(_$LoginScreenRefreshUIImpl) then) =
      __$$LoginScreenRefreshUIImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenRefreshUIImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenRefreshUIImpl>
    implements _$$LoginScreenRefreshUIImplCopyWith<$Res> {
  __$$LoginScreenRefreshUIImplCopyWithImpl(_$LoginScreenRefreshUIImpl _value,
      $Res Function(_$LoginScreenRefreshUIImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginScreenRefreshUIImpl implements _LoginScreenRefreshUI {
  const _$LoginScreenRefreshUIImpl();

  @override
  String toString() {
    return 'LoginScreenState.refreshUI()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginScreenRefreshUIImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() refreshUI,
    required TResult Function() navigateHome,
    required TResult Function() navigateFillDetails,
  }) {
    return refreshUI();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? refreshUI,
    TResult? Function()? navigateHome,
    TResult? Function()? navigateFillDetails,
  }) {
    return refreshUI?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? refreshUI,
    TResult Function()? navigateHome,
    TResult Function()? navigateFillDetails,
    required TResult orElse(),
  }) {
    if (refreshUI != null) {
      return refreshUI();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginScreenInitial value) initial,
    required TResult Function(_LoginScreenLoading value) loading,
    required TResult Function(_LoginScreenRefreshUI value) refreshUI,
    required TResult Function(_LoginScreenNavigateHome value) navigateHome,
    required TResult Function(_LoginScreenNavigateFillDetails value)
        navigateFillDetails,
  }) {
    return refreshUI(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginScreenInitial value)? initial,
    TResult? Function(_LoginScreenLoading value)? loading,
    TResult? Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult? Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult? Function(_LoginScreenNavigateFillDetails value)?
        navigateFillDetails,
  }) {
    return refreshUI?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginScreenInitial value)? initial,
    TResult Function(_LoginScreenLoading value)? loading,
    TResult Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult Function(_LoginScreenNavigateFillDetails value)?
        navigateFillDetails,
    required TResult orElse(),
  }) {
    if (refreshUI != null) {
      return refreshUI(this);
    }
    return orElse();
  }
}

abstract class _LoginScreenRefreshUI implements LoginScreenState {
  const factory _LoginScreenRefreshUI() = _$LoginScreenRefreshUIImpl;
}

/// @nodoc
abstract class _$$LoginScreenNavigateHomeImplCopyWith<$Res> {
  factory _$$LoginScreenNavigateHomeImplCopyWith(
          _$LoginScreenNavigateHomeImpl value,
          $Res Function(_$LoginScreenNavigateHomeImpl) then) =
      __$$LoginScreenNavigateHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenNavigateHomeImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenNavigateHomeImpl>
    implements _$$LoginScreenNavigateHomeImplCopyWith<$Res> {
  __$$LoginScreenNavigateHomeImplCopyWithImpl(
      _$LoginScreenNavigateHomeImpl _value,
      $Res Function(_$LoginScreenNavigateHomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginScreenNavigateHomeImpl implements _LoginScreenNavigateHome {
  const _$LoginScreenNavigateHomeImpl();

  @override
  String toString() {
    return 'LoginScreenState.navigateHome()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginScreenNavigateHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() refreshUI,
    required TResult Function() navigateHome,
    required TResult Function() navigateFillDetails,
  }) {
    return navigateHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? refreshUI,
    TResult? Function()? navigateHome,
    TResult? Function()? navigateFillDetails,
  }) {
    return navigateHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? refreshUI,
    TResult Function()? navigateHome,
    TResult Function()? navigateFillDetails,
    required TResult orElse(),
  }) {
    if (navigateHome != null) {
      return navigateHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginScreenInitial value) initial,
    required TResult Function(_LoginScreenLoading value) loading,
    required TResult Function(_LoginScreenRefreshUI value) refreshUI,
    required TResult Function(_LoginScreenNavigateHome value) navigateHome,
    required TResult Function(_LoginScreenNavigateFillDetails value)
        navigateFillDetails,
  }) {
    return navigateHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginScreenInitial value)? initial,
    TResult? Function(_LoginScreenLoading value)? loading,
    TResult? Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult? Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult? Function(_LoginScreenNavigateFillDetails value)?
        navigateFillDetails,
  }) {
    return navigateHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginScreenInitial value)? initial,
    TResult Function(_LoginScreenLoading value)? loading,
    TResult Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult Function(_LoginScreenNavigateFillDetails value)?
        navigateFillDetails,
    required TResult orElse(),
  }) {
    if (navigateHome != null) {
      return navigateHome(this);
    }
    return orElse();
  }
}

abstract class _LoginScreenNavigateHome implements LoginScreenState {
  const factory _LoginScreenNavigateHome() = _$LoginScreenNavigateHomeImpl;
}

/// @nodoc
abstract class _$$LoginScreenNavigateFillDetailsImplCopyWith<$Res> {
  factory _$$LoginScreenNavigateFillDetailsImplCopyWith(
          _$LoginScreenNavigateFillDetailsImpl value,
          $Res Function(_$LoginScreenNavigateFillDetailsImpl) then) =
      __$$LoginScreenNavigateFillDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenNavigateFillDetailsImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res,
        _$LoginScreenNavigateFillDetailsImpl>
    implements _$$LoginScreenNavigateFillDetailsImplCopyWith<$Res> {
  __$$LoginScreenNavigateFillDetailsImplCopyWithImpl(
      _$LoginScreenNavigateFillDetailsImpl _value,
      $Res Function(_$LoginScreenNavigateFillDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginScreenNavigateFillDetailsImpl
    implements _LoginScreenNavigateFillDetails {
  const _$LoginScreenNavigateFillDetailsImpl();

  @override
  String toString() {
    return 'LoginScreenState.navigateFillDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginScreenNavigateFillDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() refreshUI,
    required TResult Function() navigateHome,
    required TResult Function() navigateFillDetails,
  }) {
    return navigateFillDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? refreshUI,
    TResult? Function()? navigateHome,
    TResult? Function()? navigateFillDetails,
  }) {
    return navigateFillDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? refreshUI,
    TResult Function()? navigateHome,
    TResult Function()? navigateFillDetails,
    required TResult orElse(),
  }) {
    if (navigateFillDetails != null) {
      return navigateFillDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginScreenInitial value) initial,
    required TResult Function(_LoginScreenLoading value) loading,
    required TResult Function(_LoginScreenRefreshUI value) refreshUI,
    required TResult Function(_LoginScreenNavigateHome value) navigateHome,
    required TResult Function(_LoginScreenNavigateFillDetails value)
        navigateFillDetails,
  }) {
    return navigateFillDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginScreenInitial value)? initial,
    TResult? Function(_LoginScreenLoading value)? loading,
    TResult? Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult? Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult? Function(_LoginScreenNavigateFillDetails value)?
        navigateFillDetails,
  }) {
    return navigateFillDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginScreenInitial value)? initial,
    TResult Function(_LoginScreenLoading value)? loading,
    TResult Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult Function(_LoginScreenNavigateFillDetails value)?
        navigateFillDetails,
    required TResult orElse(),
  }) {
    if (navigateFillDetails != null) {
      return navigateFillDetails(this);
    }
    return orElse();
  }
}

abstract class _LoginScreenNavigateFillDetails implements LoginScreenState {
  const factory _LoginScreenNavigateFillDetails() =
      _$LoginScreenNavigateFillDetailsImpl;
}
