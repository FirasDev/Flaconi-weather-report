// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  List<Weather> get currentWeather => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Weather> currentWeather) loadCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Weather> currentWeather)? loadCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Weather> currentWeather)? loadCurrentWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCurrentWeahter value) loadCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCurrentWeahter value)? loadCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCurrentWeahter value)? loadCurrentWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
  @useResult
  $Res call({List<Weather> currentWeather});
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = null,
  }) {
    return _then(_value.copyWith(
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadCurrentWeahterImplCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$LoadCurrentWeahterImplCopyWith(_$LoadCurrentWeahterImpl value,
          $Res Function(_$LoadCurrentWeahterImpl) then) =
      __$$LoadCurrentWeahterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Weather> currentWeather});
}

/// @nodoc
class __$$LoadCurrentWeahterImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$LoadCurrentWeahterImpl>
    implements _$$LoadCurrentWeahterImplCopyWith<$Res> {
  __$$LoadCurrentWeahterImplCopyWithImpl(_$LoadCurrentWeahterImpl _value,
      $Res Function(_$LoadCurrentWeahterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = null,
  }) {
    return _then(_$LoadCurrentWeahterImpl(
      currentWeather: null == currentWeather
          ? _value._currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }
}

/// @nodoc

class _$LoadCurrentWeahterImpl implements _LoadCurrentWeahter {
  const _$LoadCurrentWeahterImpl({required final List<Weather> currentWeather})
      : _currentWeather = currentWeather;

  final List<Weather> _currentWeather;
  @override
  List<Weather> get currentWeather {
    if (_currentWeather is EqualUnmodifiableListView) return _currentWeather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentWeather);
  }

  @override
  String toString() {
    return 'WeatherEvent.loadCurrentWeather(currentWeather: $currentWeather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCurrentWeahterImpl &&
            const DeepCollectionEquality()
                .equals(other._currentWeather, _currentWeather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currentWeather));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCurrentWeahterImplCopyWith<_$LoadCurrentWeahterImpl> get copyWith =>
      __$$LoadCurrentWeahterImplCopyWithImpl<_$LoadCurrentWeahterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Weather> currentWeather) loadCurrentWeather,
  }) {
    return loadCurrentWeather(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Weather> currentWeather)? loadCurrentWeather,
  }) {
    return loadCurrentWeather?.call(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Weather> currentWeather)? loadCurrentWeather,
    required TResult orElse(),
  }) {
    if (loadCurrentWeather != null) {
      return loadCurrentWeather(currentWeather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCurrentWeahter value) loadCurrentWeather,
  }) {
    return loadCurrentWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCurrentWeahter value)? loadCurrentWeather,
  }) {
    return loadCurrentWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCurrentWeahter value)? loadCurrentWeather,
    required TResult orElse(),
  }) {
    if (loadCurrentWeather != null) {
      return loadCurrentWeather(this);
    }
    return orElse();
  }
}

abstract class _LoadCurrentWeahter implements WeatherEvent {
  const factory _LoadCurrentWeahter(
      {required final List<Weather> currentWeather}) = _$LoadCurrentWeahterImpl;

  @override
  List<Weather> get currentWeather;
  @override
  @JsonKey(ignore: true)
  _$$LoadCurrentWeahterImplCopyWith<_$LoadCurrentWeahterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  WeatherStateStatus get status => throw _privateConstructorUsedError;
  List<Weather> get currentWeather => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call({WeatherStateStatus status, List<Weather> currentWeather});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentWeather = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStateStatus,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherStateImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$WeatherStateImplCopyWith(
          _$WeatherStateImpl value, $Res Function(_$WeatherStateImpl) then) =
      __$$WeatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherStateStatus status, List<Weather> currentWeather});
}

/// @nodoc
class __$$WeatherStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateImpl>
    implements _$$WeatherStateImplCopyWith<$Res> {
  __$$WeatherStateImplCopyWithImpl(
      _$WeatherStateImpl _value, $Res Function(_$WeatherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentWeather = null,
  }) {
    return _then(_$WeatherStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStateStatus,
      currentWeather: null == currentWeather
          ? _value._currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }
}

/// @nodoc

class _$WeatherStateImpl implements _WeatherState {
  const _$WeatherStateImpl(
      {this.status = WeatherStateStatus.loading,
      final List<Weather> currentWeather = const []})
      : _currentWeather = currentWeather;

  @override
  @JsonKey()
  final WeatherStateStatus status;
  final List<Weather> _currentWeather;
  @override
  @JsonKey()
  List<Weather> get currentWeather {
    if (_currentWeather is EqualUnmodifiableListView) return _currentWeather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentWeather);
  }

  @override
  String toString() {
    return 'WeatherState(status: $status, currentWeather: $currentWeather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._currentWeather, _currentWeather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_currentWeather));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {final WeatherStateStatus status,
      final List<Weather> currentWeather}) = _$WeatherStateImpl;

  @override
  WeatherStateStatus get status;
  @override
  List<Weather> get currentWeather;
  @override
  @JsonKey(ignore: true)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
