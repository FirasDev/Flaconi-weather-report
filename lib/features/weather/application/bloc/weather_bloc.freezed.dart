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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Weather> currentWeather) loadCurrentWeather,
    required TResult Function(TempUnit unit) updateDefaultTempUnit,
    required TResult Function() refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Weather> currentWeather)? loadCurrentWeather,
    TResult? Function(TempUnit unit)? updateDefaultTempUnit,
    TResult? Function()? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Weather> currentWeather)? loadCurrentWeather,
    TResult Function(TempUnit unit)? updateDefaultTempUnit,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCurrentWeahter value) loadCurrentWeather,
    required TResult Function(_UpdateDefaultTempUnit value)
        updateDefaultTempUnit,
    required TResult Function(_RefreshData value) refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCurrentWeahter value)? loadCurrentWeather,
    TResult? Function(_UpdateDefaultTempUnit value)? updateDefaultTempUnit,
    TResult? Function(_RefreshData value)? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCurrentWeahter value)? loadCurrentWeather,
    TResult Function(_UpdateDefaultTempUnit value)? updateDefaultTempUnit,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadCurrentWeahterImplCopyWith<$Res> {
  factory _$$LoadCurrentWeahterImplCopyWith(_$LoadCurrentWeahterImpl value,
          $Res Function(_$LoadCurrentWeahterImpl) then) =
      __$$LoadCurrentWeahterImplCopyWithImpl<$Res>;
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
    required TResult Function(TempUnit unit) updateDefaultTempUnit,
    required TResult Function() refreshData,
  }) {
    return loadCurrentWeather(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Weather> currentWeather)? loadCurrentWeather,
    TResult? Function(TempUnit unit)? updateDefaultTempUnit,
    TResult? Function()? refreshData,
  }) {
    return loadCurrentWeather?.call(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Weather> currentWeather)? loadCurrentWeather,
    TResult Function(TempUnit unit)? updateDefaultTempUnit,
    TResult Function()? refreshData,
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
    required TResult Function(_UpdateDefaultTempUnit value)
        updateDefaultTempUnit,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return loadCurrentWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCurrentWeahter value)? loadCurrentWeather,
    TResult? Function(_UpdateDefaultTempUnit value)? updateDefaultTempUnit,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return loadCurrentWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCurrentWeahter value)? loadCurrentWeather,
    TResult Function(_UpdateDefaultTempUnit value)? updateDefaultTempUnit,
    TResult Function(_RefreshData value)? refreshData,
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

  List<Weather> get currentWeather;
  @JsonKey(ignore: true)
  _$$LoadCurrentWeahterImplCopyWith<_$LoadCurrentWeahterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDefaultTempUnitImplCopyWith<$Res> {
  factory _$$UpdateDefaultTempUnitImplCopyWith(
          _$UpdateDefaultTempUnitImpl value,
          $Res Function(_$UpdateDefaultTempUnitImpl) then) =
      __$$UpdateDefaultTempUnitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TempUnit unit});
}

/// @nodoc
class __$$UpdateDefaultTempUnitImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$UpdateDefaultTempUnitImpl>
    implements _$$UpdateDefaultTempUnitImplCopyWith<$Res> {
  __$$UpdateDefaultTempUnitImplCopyWithImpl(_$UpdateDefaultTempUnitImpl _value,
      $Res Function(_$UpdateDefaultTempUnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
  }) {
    return _then(_$UpdateDefaultTempUnitImpl(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as TempUnit,
    ));
  }
}

/// @nodoc

class _$UpdateDefaultTempUnitImpl implements _UpdateDefaultTempUnit {
  const _$UpdateDefaultTempUnitImpl({required this.unit});

  @override
  final TempUnit unit;

  @override
  String toString() {
    return 'WeatherEvent.updateDefaultTempUnit(unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDefaultTempUnitImpl &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDefaultTempUnitImplCopyWith<_$UpdateDefaultTempUnitImpl>
      get copyWith => __$$UpdateDefaultTempUnitImplCopyWithImpl<
          _$UpdateDefaultTempUnitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Weather> currentWeather) loadCurrentWeather,
    required TResult Function(TempUnit unit) updateDefaultTempUnit,
    required TResult Function() refreshData,
  }) {
    return updateDefaultTempUnit(unit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Weather> currentWeather)? loadCurrentWeather,
    TResult? Function(TempUnit unit)? updateDefaultTempUnit,
    TResult? Function()? refreshData,
  }) {
    return updateDefaultTempUnit?.call(unit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Weather> currentWeather)? loadCurrentWeather,
    TResult Function(TempUnit unit)? updateDefaultTempUnit,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (updateDefaultTempUnit != null) {
      return updateDefaultTempUnit(unit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCurrentWeahter value) loadCurrentWeather,
    required TResult Function(_UpdateDefaultTempUnit value)
        updateDefaultTempUnit,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return updateDefaultTempUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCurrentWeahter value)? loadCurrentWeather,
    TResult? Function(_UpdateDefaultTempUnit value)? updateDefaultTempUnit,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return updateDefaultTempUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCurrentWeahter value)? loadCurrentWeather,
    TResult Function(_UpdateDefaultTempUnit value)? updateDefaultTempUnit,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (updateDefaultTempUnit != null) {
      return updateDefaultTempUnit(this);
    }
    return orElse();
  }
}

abstract class _UpdateDefaultTempUnit implements WeatherEvent {
  const factory _UpdateDefaultTempUnit({required final TempUnit unit}) =
      _$UpdateDefaultTempUnitImpl;

  TempUnit get unit;
  @JsonKey(ignore: true)
  _$$UpdateDefaultTempUnitImplCopyWith<_$UpdateDefaultTempUnitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshDataImplCopyWith<$Res> {
  factory _$$RefreshDataImplCopyWith(
          _$RefreshDataImpl value, $Res Function(_$RefreshDataImpl) then) =
      __$$RefreshDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshDataImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$RefreshDataImpl>
    implements _$$RefreshDataImplCopyWith<$Res> {
  __$$RefreshDataImplCopyWithImpl(
      _$RefreshDataImpl _value, $Res Function(_$RefreshDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshDataImpl implements _RefreshData {
  const _$RefreshDataImpl();

  @override
  String toString() {
    return 'WeatherEvent.refreshData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Weather> currentWeather) loadCurrentWeather,
    required TResult Function(TempUnit unit) updateDefaultTempUnit,
    required TResult Function() refreshData,
  }) {
    return refreshData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Weather> currentWeather)? loadCurrentWeather,
    TResult? Function(TempUnit unit)? updateDefaultTempUnit,
    TResult? Function()? refreshData,
  }) {
    return refreshData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Weather> currentWeather)? loadCurrentWeather,
    TResult Function(TempUnit unit)? updateDefaultTempUnit,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCurrentWeahter value) loadCurrentWeather,
    required TResult Function(_UpdateDefaultTempUnit value)
        updateDefaultTempUnit,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return refreshData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCurrentWeahter value)? loadCurrentWeather,
    TResult? Function(_UpdateDefaultTempUnit value)? updateDefaultTempUnit,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return refreshData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCurrentWeahter value)? loadCurrentWeather,
    TResult Function(_UpdateDefaultTempUnit value)? updateDefaultTempUnit,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(this);
    }
    return orElse();
  }
}

abstract class _RefreshData implements WeatherEvent {
  const factory _RefreshData() = _$RefreshDataImpl;
}

/// @nodoc
mixin _$WeatherState {
  WeatherStateStatus get status => throw _privateConstructorUsedError;
  List<Weather> get currentWeather => throw _privateConstructorUsedError;
  String get currentCity => throw _privateConstructorUsedError;
  TempUnit get tempUnit => throw _privateConstructorUsedError;
  List<Weather> get forecast => throw _privateConstructorUsedError;

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
  $Res call(
      {WeatherStateStatus status,
      List<Weather> currentWeather,
      String currentCity,
      TempUnit tempUnit,
      List<Weather> forecast});
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
    Object? currentCity = null,
    Object? tempUnit = null,
    Object? forecast = null,
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
      currentCity: null == currentCity
          ? _value.currentCity
          : currentCity // ignore: cast_nullable_to_non_nullable
              as String,
      tempUnit: null == tempUnit
          ? _value.tempUnit
          : tempUnit // ignore: cast_nullable_to_non_nullable
              as TempUnit,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {WeatherStateStatus status,
      List<Weather> currentWeather,
      String currentCity,
      TempUnit tempUnit,
      List<Weather> forecast});
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
    Object? currentCity = null,
    Object? tempUnit = null,
    Object? forecast = null,
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
      currentCity: null == currentCity
          ? _value.currentCity
          : currentCity // ignore: cast_nullable_to_non_nullable
              as String,
      tempUnit: null == tempUnit
          ? _value.tempUnit
          : tempUnit // ignore: cast_nullable_to_non_nullable
              as TempUnit,
      forecast: null == forecast
          ? _value._forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }
}

/// @nodoc

class _$WeatherStateImpl implements _WeatherState {
  const _$WeatherStateImpl(
      {this.status = WeatherStateStatus.loading,
      final List<Weather> currentWeather = const [],
      this.currentCity = '',
      this.tempUnit = TempUnit.fahrenheit,
      final List<Weather> forecast = const []})
      : _currentWeather = currentWeather,
        _forecast = forecast;

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
  @JsonKey()
  final String currentCity;
  @override
  @JsonKey()
  final TempUnit tempUnit;
  final List<Weather> _forecast;
  @override
  @JsonKey()
  List<Weather> get forecast {
    if (_forecast is EqualUnmodifiableListView) return _forecast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecast);
  }

  @override
  String toString() {
    return 'WeatherState(status: $status, currentWeather: $currentWeather, currentCity: $currentCity, tempUnit: $tempUnit, forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._currentWeather, _currentWeather) &&
            (identical(other.currentCity, currentCity) ||
                other.currentCity == currentCity) &&
            (identical(other.tempUnit, tempUnit) ||
                other.tempUnit == tempUnit) &&
            const DeepCollectionEquality().equals(other._forecast, _forecast));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_currentWeather),
      currentCity,
      tempUnit,
      const DeepCollectionEquality().hash(_forecast));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {final WeatherStateStatus status,
      final List<Weather> currentWeather,
      final String currentCity,
      final TempUnit tempUnit,
      final List<Weather> forecast}) = _$WeatherStateImpl;

  @override
  WeatherStateStatus get status;
  @override
  List<Weather> get currentWeather;
  @override
  String get currentCity;
  @override
  TempUnit get tempUnit;
  @override
  List<Weather> get forecast;
  @override
  @JsonKey(ignore: true)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
