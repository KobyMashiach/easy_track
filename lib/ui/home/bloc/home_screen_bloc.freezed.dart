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
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) addCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? addCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? addCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategory value) addCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategory value)? addCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategory value)? addCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeScreenEventCopyWith<HomeScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res, HomeScreenEvent>;
  @useResult
  $Res call({String name});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCategoryImplCopyWith<$Res>
    implements $HomeScreenEventCopyWith<$Res> {
  factory _$$AddCategoryImplCopyWith(
          _$AddCategoryImpl value, $Res Function(_$AddCategoryImpl) then) =
      __$$AddCategoryImplCopyWithImpl<$Res>;
  @override
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
    required TResult Function(String name) addCategory,
  }) {
    return addCategory(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? addCategory,
  }) {
    return addCategory?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_AddCategory value) addCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategory value)? addCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

  @override
  String get name;

  /// Create a copy of HomeScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeScreenState {
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CategoryModel> categories) initial,
    required TResult Function(List<CategoryModel> categories) loading,
    required TResult Function(List<CategoryModel> categories) refreshUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoryModel> categories)? initial,
    TResult? Function(List<CategoryModel> categories)? loading,
    TResult? Function(List<CategoryModel> categories)? refreshUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoryModel> categories)? initial,
    TResult Function(List<CategoryModel> categories)? loading,
    TResult Function(List<CategoryModel> categories)? refreshUI,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenInitial value) initial,
    required TResult Function(HomeScreenLoading value) loading,
    required TResult Function(HomeScreenRefreshUI value) refreshUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenInitial value)? initial,
    TResult? Function(HomeScreenLoading value)? loading,
    TResult? Function(HomeScreenRefreshUI value)? refreshUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenInitial value)? initial,
    TResult Function(HomeScreenLoading value)? loading,
    TResult Function(HomeScreenRefreshUI value)? refreshUI,
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
  $Res call({List<CategoryModel> categories});
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
              as List<CategoryModel>,
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
  $Res call({List<CategoryModel> categories});
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
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$HomeScreenInitialImpl implements HomeScreenInitial {
  const _$HomeScreenInitialImpl({required final List<CategoryModel> categories})
      : _categories = categories;

  final List<CategoryModel> _categories;
  @override
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
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
    required TResult Function(List<CategoryModel> categories) initial,
    required TResult Function(List<CategoryModel> categories) loading,
    required TResult Function(List<CategoryModel> categories) refreshUI,
  }) {
    return initial(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoryModel> categories)? initial,
    TResult? Function(List<CategoryModel> categories)? loading,
    TResult? Function(List<CategoryModel> categories)? refreshUI,
  }) {
    return initial?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoryModel> categories)? initial,
    TResult Function(List<CategoryModel> categories)? loading,
    TResult Function(List<CategoryModel> categories)? refreshUI,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenInitial value)? initial,
    TResult? Function(HomeScreenLoading value)? loading,
    TResult? Function(HomeScreenRefreshUI value)? refreshUI,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenInitial value)? initial,
    TResult Function(HomeScreenLoading value)? loading,
    TResult Function(HomeScreenRefreshUI value)? refreshUI,
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
          {required final List<CategoryModel> categories}) =
      _$HomeScreenInitialImpl;

  @override
  List<CategoryModel> get categories;

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
  $Res call({List<CategoryModel> categories});
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
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$HomeScreenLoadingImpl implements HomeScreenLoading {
  const _$HomeScreenLoadingImpl({required final List<CategoryModel> categories})
      : _categories = categories;

  final List<CategoryModel> _categories;
  @override
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
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
    required TResult Function(List<CategoryModel> categories) initial,
    required TResult Function(List<CategoryModel> categories) loading,
    required TResult Function(List<CategoryModel> categories) refreshUI,
  }) {
    return loading(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoryModel> categories)? initial,
    TResult? Function(List<CategoryModel> categories)? loading,
    TResult? Function(List<CategoryModel> categories)? refreshUI,
  }) {
    return loading?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoryModel> categories)? initial,
    TResult Function(List<CategoryModel> categories)? loading,
    TResult Function(List<CategoryModel> categories)? refreshUI,
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
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenInitial value)? initial,
    TResult? Function(HomeScreenLoading value)? loading,
    TResult? Function(HomeScreenRefreshUI value)? refreshUI,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenInitial value)? initial,
    TResult Function(HomeScreenLoading value)? loading,
    TResult Function(HomeScreenRefreshUI value)? refreshUI,
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
          {required final List<CategoryModel> categories}) =
      _$HomeScreenLoadingImpl;

  @override
  List<CategoryModel> get categories;

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
  $Res call({List<CategoryModel> categories});
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
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$HomeScreenRefreshUIImpl implements HomeScreenRefreshUI {
  const _$HomeScreenRefreshUIImpl(
      {required final List<CategoryModel> categories})
      : _categories = categories;

  final List<CategoryModel> _categories;
  @override
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
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
    required TResult Function(List<CategoryModel> categories) initial,
    required TResult Function(List<CategoryModel> categories) loading,
    required TResult Function(List<CategoryModel> categories) refreshUI,
  }) {
    return refreshUI(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoryModel> categories)? initial,
    TResult? Function(List<CategoryModel> categories)? loading,
    TResult? Function(List<CategoryModel> categories)? refreshUI,
  }) {
    return refreshUI?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoryModel> categories)? initial,
    TResult Function(List<CategoryModel> categories)? loading,
    TResult Function(List<CategoryModel> categories)? refreshUI,
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
  }) {
    return refreshUI(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenInitial value)? initial,
    TResult? Function(HomeScreenLoading value)? loading,
    TResult? Function(HomeScreenRefreshUI value)? refreshUI,
  }) {
    return refreshUI?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenInitial value)? initial,
    TResult Function(HomeScreenLoading value)? loading,
    TResult Function(HomeScreenRefreshUI value)? refreshUI,
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
          {required final List<CategoryModel> categories}) =
      _$HomeScreenRefreshUIImpl;

  @override
  List<CategoryModel> get categories;

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeScreenRefreshUIImplCopyWith<_$HomeScreenRefreshUIImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
