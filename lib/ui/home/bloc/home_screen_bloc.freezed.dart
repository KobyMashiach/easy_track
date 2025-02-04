// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String name) addCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String name)? addCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String name)? addCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_AddCategory value) addCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_AddCategory value)? addCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_AddCategory value)? addCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res, HomeScreenEvent>;
}

/// @nodoc
class _$HomeScreenEventCopyWithImpl<$Res, $Val extends HomeScreenEvent>
    implements $HomeScreenEventCopyWith<$Res> {
  _$HomeScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'HomeScreenEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String name) addCategory,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String name)? addCategory,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String name)? addCategory,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_AddCategory value) addCategory,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_AddCategory value)? addCategory,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_AddCategory value)? addCategory,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements HomeScreenEvent {
  const factory _Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$AddCategoryImplCopyWith<$Res> {
  factory _$$AddCategoryImplCopyWith(
          _$AddCategoryImpl value, $Res Function(_$AddCategoryImpl) then) =
      __$$AddCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AddCategoryImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$AddCategoryImpl>
    implements _$$AddCategoryImplCopyWith<$Res> {
  __$$AddCategoryImplCopyWithImpl(
      _$AddCategoryImpl _value, $Res Function(_$AddCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AddCategoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCategoryImpl implements _AddCategory {
  const _$AddCategoryImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'HomeScreenEvent.addCategory(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of HomeScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      __$$AddCategoryImplCopyWithImpl<_$AddCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String name) addCategory,
  }) {
    return addCategory(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String name)? addCategory,
  }) {
    return addCategory?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String name)? addCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_AddCategory value) addCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_AddCategory value)? addCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_AddCategory value)? addCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class _AddCategory implements HomeScreenEvent {
  const factory _AddCategory({required final String name}) = _$AddCategoryImpl;

  String get name;

  /// Create a copy of HomeScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeScreenState {
  Map<String, CategoryModel> get categories =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, CategoryModel> categories) initial,
    required TResult Function(Map<String, CategoryModel> categories) loading,
    required TResult Function(Map<String, CategoryModel> categories) refreshUI,
    required TResult Function(
            Map<String, CategoryModel> categories, String message)
        message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, CategoryModel> categories)? initial,
    TResult? Function(Map<String, CategoryModel> categories)? loading,
    TResult? Function(Map<String, CategoryModel> categories)? refreshUI,
    TResult? Function(Map<String, CategoryModel> categories, String message)?
        message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, CategoryModel> categories)? initial,
    TResult Function(Map<String, CategoryModel> categories)? loading,
    TResult Function(Map<String, CategoryModel> categories)? refreshUI,
    TResult Function(Map<String, CategoryModel> categories, String message)?
        message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenInitial value) initial,
    required TResult Function(HomeScreenLoading value) loading,
    required TResult Function(HomeScreenRefreshUI value) refreshUI,
    required TResult Function(HomeScreenMessage value) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenInitial value)? initial,
    TResult? Function(HomeScreenLoading value)? loading,
    TResult? Function(HomeScreenRefreshUI value)? refreshUI,
    TResult? Function(HomeScreenMessage value)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenInitial value)? initial,
    TResult Function(HomeScreenLoading value)? loading,
    TResult Function(HomeScreenRefreshUI value)? refreshUI,
    TResult Function(HomeScreenMessage value)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call({Map<String, CategoryModel> categories});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, CategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeScreenInitialImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenInitialImplCopyWith(_$HomeScreenInitialImpl value,
          $Res Function(_$HomeScreenInitialImpl) then) =
      __$$HomeScreenInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, CategoryModel> categories});
}

/// @nodoc
class __$$HomeScreenInitialImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenInitialImpl>
    implements _$$HomeScreenInitialImplCopyWith<$Res> {
  __$$HomeScreenInitialImplCopyWithImpl(_$HomeScreenInitialImpl _value,
      $Res Function(_$HomeScreenInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$HomeScreenInitialImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, CategoryModel>,
    ));
  }
}

/// @nodoc

class _$HomeScreenInitialImpl implements HomeScreenInitial {
  const _$HomeScreenInitialImpl(
      {required final Map<String, CategoryModel> categories})
      : _categories = categories;

  final Map<String, CategoryModel> _categories;
  @override
  Map<String, CategoryModel> get categories {
    if (_categories is EqualUnmodifiableMapView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categories);
  }

  @override
  String toString() {
    return 'HomeScreenState.initial(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenInitialImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenInitialImplCopyWith<_$HomeScreenInitialImpl> get copyWith =>
      __$$HomeScreenInitialImplCopyWithImpl<_$HomeScreenInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, CategoryModel> categories) initial,
    required TResult Function(Map<String, CategoryModel> categories) loading,
    required TResult Function(Map<String, CategoryModel> categories) refreshUI,
    required TResult Function(
            Map<String, CategoryModel> categories, String message)
        message,
  }) {
    return initial(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, CategoryModel> categories)? initial,
    TResult? Function(Map<String, CategoryModel> categories)? loading,
    TResult? Function(Map<String, CategoryModel> categories)? refreshUI,
    TResult? Function(Map<String, CategoryModel> categories, String message)?
        message,
  }) {
    return initial?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, CategoryModel> categories)? initial,
    TResult Function(Map<String, CategoryModel> categories)? loading,
    TResult Function(Map<String, CategoryModel> categories)? refreshUI,
    TResult Function(Map<String, CategoryModel> categories, String message)?
        message,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenInitial value) initial,
    required TResult Function(HomeScreenLoading value) loading,
    required TResult Function(HomeScreenRefreshUI value) refreshUI,
    required TResult Function(HomeScreenMessage value) message,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenInitial value)? initial,
    TResult? Function(HomeScreenLoading value)? loading,
    TResult? Function(HomeScreenRefreshUI value)? refreshUI,
    TResult? Function(HomeScreenMessage value)? message,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenInitial value)? initial,
    TResult Function(HomeScreenLoading value)? loading,
    TResult Function(HomeScreenRefreshUI value)? refreshUI,
    TResult Function(HomeScreenMessage value)? message,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeScreenInitial implements HomeScreenState {
  const factory HomeScreenInitial(
          {required final Map<String, CategoryModel> categories}) =
      _$HomeScreenInitialImpl;

  @override
  Map<String, CategoryModel> get categories;

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeScreenInitialImplCopyWith<_$HomeScreenInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeScreenLoadingImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenLoadingImplCopyWith(_$HomeScreenLoadingImpl value,
          $Res Function(_$HomeScreenLoadingImpl) then) =
      __$$HomeScreenLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, CategoryModel> categories});
}

/// @nodoc
class __$$HomeScreenLoadingImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenLoadingImpl>
    implements _$$HomeScreenLoadingImplCopyWith<$Res> {
  __$$HomeScreenLoadingImplCopyWithImpl(_$HomeScreenLoadingImpl _value,
      $Res Function(_$HomeScreenLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$HomeScreenLoadingImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, CategoryModel>,
    ));
  }
}

/// @nodoc

class _$HomeScreenLoadingImpl implements HomeScreenLoading {
  const _$HomeScreenLoadingImpl(
      {required final Map<String, CategoryModel> categories})
      : _categories = categories;

  final Map<String, CategoryModel> _categories;
  @override
  Map<String, CategoryModel> get categories {
    if (_categories is EqualUnmodifiableMapView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categories);
  }

  @override
  String toString() {
    return 'HomeScreenState.loading(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenLoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenLoadingImplCopyWith<_$HomeScreenLoadingImpl> get copyWith =>
      __$$HomeScreenLoadingImplCopyWithImpl<_$HomeScreenLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, CategoryModel> categories) initial,
    required TResult Function(Map<String, CategoryModel> categories) loading,
    required TResult Function(Map<String, CategoryModel> categories) refreshUI,
    required TResult Function(
            Map<String, CategoryModel> categories, String message)
        message,
  }) {
    return loading(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, CategoryModel> categories)? initial,
    TResult? Function(Map<String, CategoryModel> categories)? loading,
    TResult? Function(Map<String, CategoryModel> categories)? refreshUI,
    TResult? Function(Map<String, CategoryModel> categories, String message)?
        message,
  }) {
    return loading?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, CategoryModel> categories)? initial,
    TResult Function(Map<String, CategoryModel> categories)? loading,
    TResult Function(Map<String, CategoryModel> categories)? refreshUI,
    TResult Function(Map<String, CategoryModel> categories, String message)?
        message,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenInitial value) initial,
    required TResult Function(HomeScreenLoading value) loading,
    required TResult Function(HomeScreenRefreshUI value) refreshUI,
    required TResult Function(HomeScreenMessage value) message,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenInitial value)? initial,
    TResult? Function(HomeScreenLoading value)? loading,
    TResult? Function(HomeScreenRefreshUI value)? refreshUI,
    TResult? Function(HomeScreenMessage value)? message,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenInitial value)? initial,
    TResult Function(HomeScreenLoading value)? loading,
    TResult Function(HomeScreenRefreshUI value)? refreshUI,
    TResult Function(HomeScreenMessage value)? message,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeScreenLoading implements HomeScreenState {
  const factory HomeScreenLoading(
          {required final Map<String, CategoryModel> categories}) =
      _$HomeScreenLoadingImpl;

  @override
  Map<String, CategoryModel> get categories;

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeScreenLoadingImplCopyWith<_$HomeScreenLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeScreenRefreshUIImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenRefreshUIImplCopyWith(_$HomeScreenRefreshUIImpl value,
          $Res Function(_$HomeScreenRefreshUIImpl) then) =
      __$$HomeScreenRefreshUIImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, CategoryModel> categories});
}

/// @nodoc
class __$$HomeScreenRefreshUIImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenRefreshUIImpl>
    implements _$$HomeScreenRefreshUIImplCopyWith<$Res> {
  __$$HomeScreenRefreshUIImplCopyWithImpl(_$HomeScreenRefreshUIImpl _value,
      $Res Function(_$HomeScreenRefreshUIImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$HomeScreenRefreshUIImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, CategoryModel>,
    ));
  }
}

/// @nodoc

class _$HomeScreenRefreshUIImpl implements HomeScreenRefreshUI {
  const _$HomeScreenRefreshUIImpl(
      {required final Map<String, CategoryModel> categories})
      : _categories = categories;

  final Map<String, CategoryModel> _categories;
  @override
  Map<String, CategoryModel> get categories {
    if (_categories is EqualUnmodifiableMapView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categories);
  }

  @override
  String toString() {
    return 'HomeScreenState.refreshUI(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenRefreshUIImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenRefreshUIImplCopyWith<_$HomeScreenRefreshUIImpl> get copyWith =>
      __$$HomeScreenRefreshUIImplCopyWithImpl<_$HomeScreenRefreshUIImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, CategoryModel> categories) initial,
    required TResult Function(Map<String, CategoryModel> categories) loading,
    required TResult Function(Map<String, CategoryModel> categories) refreshUI,
    required TResult Function(
            Map<String, CategoryModel> categories, String message)
        message,
  }) {
    return refreshUI(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, CategoryModel> categories)? initial,
    TResult? Function(Map<String, CategoryModel> categories)? loading,
    TResult? Function(Map<String, CategoryModel> categories)? refreshUI,
    TResult? Function(Map<String, CategoryModel> categories, String message)?
        message,
  }) {
    return refreshUI?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, CategoryModel> categories)? initial,
    TResult Function(Map<String, CategoryModel> categories)? loading,
    TResult Function(Map<String, CategoryModel> categories)? refreshUI,
    TResult Function(Map<String, CategoryModel> categories, String message)?
        message,
    required TResult orElse(),
  }) {
    if (refreshUI != null) {
      return refreshUI(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenInitial value) initial,
    required TResult Function(HomeScreenLoading value) loading,
    required TResult Function(HomeScreenRefreshUI value) refreshUI,
    required TResult Function(HomeScreenMessage value) message,
  }) {
    return refreshUI(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenInitial value)? initial,
    TResult? Function(HomeScreenLoading value)? loading,
    TResult? Function(HomeScreenRefreshUI value)? refreshUI,
    TResult? Function(HomeScreenMessage value)? message,
  }) {
    return refreshUI?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenInitial value)? initial,
    TResult Function(HomeScreenLoading value)? loading,
    TResult Function(HomeScreenRefreshUI value)? refreshUI,
    TResult Function(HomeScreenMessage value)? message,
    required TResult orElse(),
  }) {
    if (refreshUI != null) {
      return refreshUI(this);
    }
    return orElse();
  }
}

abstract class HomeScreenRefreshUI implements HomeScreenState {
  const factory HomeScreenRefreshUI(
          {required final Map<String, CategoryModel> categories}) =
      _$HomeScreenRefreshUIImpl;

  @override
  Map<String, CategoryModel> get categories;

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeScreenRefreshUIImplCopyWith<_$HomeScreenRefreshUIImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeScreenMessageImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenMessageImplCopyWith(_$HomeScreenMessageImpl value,
          $Res Function(_$HomeScreenMessageImpl) then) =
      __$$HomeScreenMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, CategoryModel> categories, String message});
}

/// @nodoc
class __$$HomeScreenMessageImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenMessageImpl>
    implements _$$HomeScreenMessageImplCopyWith<$Res> {
  __$$HomeScreenMessageImplCopyWithImpl(_$HomeScreenMessageImpl _value,
      $Res Function(_$HomeScreenMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? message = null,
  }) {
    return _then(_$HomeScreenMessageImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, CategoryModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeScreenMessageImpl implements HomeScreenMessage {
  const _$HomeScreenMessageImpl(
      {required final Map<String, CategoryModel> categories,
      required this.message})
      : _categories = categories;

  final Map<String, CategoryModel> _categories;
  @override
  Map<String, CategoryModel> get categories {
    if (_categories is EqualUnmodifiableMapView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categories);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'HomeScreenState.message(categories: $categories, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenMessageImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories), message);

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenMessageImplCopyWith<_$HomeScreenMessageImpl> get copyWith =>
      __$$HomeScreenMessageImplCopyWithImpl<_$HomeScreenMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, CategoryModel> categories) initial,
    required TResult Function(Map<String, CategoryModel> categories) loading,
    required TResult Function(Map<String, CategoryModel> categories) refreshUI,
    required TResult Function(
            Map<String, CategoryModel> categories, String message)
        message,
  }) {
    return message(categories, this.message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, CategoryModel> categories)? initial,
    TResult? Function(Map<String, CategoryModel> categories)? loading,
    TResult? Function(Map<String, CategoryModel> categories)? refreshUI,
    TResult? Function(Map<String, CategoryModel> categories, String message)?
        message,
  }) {
    return message?.call(categories, this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, CategoryModel> categories)? initial,
    TResult Function(Map<String, CategoryModel> categories)? loading,
    TResult Function(Map<String, CategoryModel> categories)? refreshUI,
    TResult Function(Map<String, CategoryModel> categories, String message)?
        message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(categories, this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenInitial value) initial,
    required TResult Function(HomeScreenLoading value) loading,
    required TResult Function(HomeScreenRefreshUI value) refreshUI,
    required TResult Function(HomeScreenMessage value) message,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenInitial value)? initial,
    TResult? Function(HomeScreenLoading value)? loading,
    TResult? Function(HomeScreenRefreshUI value)? refreshUI,
    TResult? Function(HomeScreenMessage value)? message,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenInitial value)? initial,
    TResult Function(HomeScreenLoading value)? loading,
    TResult Function(HomeScreenRefreshUI value)? refreshUI,
    TResult Function(HomeScreenMessage value)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class HomeScreenMessage implements HomeScreenState {
  const factory HomeScreenMessage(
      {required final Map<String, CategoryModel> categories,
      required final String message}) = _$HomeScreenMessageImpl;

  @override
  Map<String, CategoryModel> get categories;
  String get message;

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeScreenMessageImplCopyWith<_$HomeScreenMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
