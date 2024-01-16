// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommonFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) userLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? data,
    TResult? Function(String message)? noData,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message)? noConnection,
    TResult? Function(String message)? userLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_NoData value) noData,
    required TResult Function(_Server value) server,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(_UserLevel value) userLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_Server value)? server,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(_UserLevel value)? userLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_NoData value)? noData,
    TResult Function(_Server value)? server,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommonFailureCopyWith<CommonFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonFailureCopyWith<$Res> {
  factory $CommonFailureCopyWith(
          CommonFailure value, $Res Function(CommonFailure) then) =
      _$CommonFailureCopyWithImpl<$Res, CommonFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CommonFailureCopyWithImpl<$Res, $Val extends CommonFailure>
    implements $CommonFailureCopyWith<$Res> {
  _$CommonFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DataImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DataImpl extends _Data {
  const _$DataImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CommonFailure.data(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) userLevel,
  }) {
    return data(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? data,
    TResult? Function(String message)? noData,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message)? noConnection,
    TResult? Function(String message)? userLevel,
  }) {
    return data?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_NoData value) noData,
    required TResult Function(_Server value) server,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(_UserLevel value) userLevel,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_Server value)? server,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(_UserLevel value)? userLevel,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_NoData value)? noData,
    TResult Function(_Server value)? server,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data extends CommonFailure {
  const factory _Data({required final String message}) = _$DataImpl;
  const _Data._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDataImplCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$NoDataImplCopyWith(
          _$NoDataImpl value, $Res Function(_$NoDataImpl) then) =
      __$$NoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoDataImplCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res, _$NoDataImpl>
    implements _$$NoDataImplCopyWith<$Res> {
  __$$NoDataImplCopyWithImpl(
      _$NoDataImpl _value, $Res Function(_$NoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoDataImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoDataImpl extends _NoData {
  const _$NoDataImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CommonFailure.noData(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoDataImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoDataImplCopyWith<_$NoDataImpl> get copyWith =>
      __$$NoDataImplCopyWithImpl<_$NoDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) userLevel,
  }) {
    return noData(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? data,
    TResult? Function(String message)? noData,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message)? noConnection,
    TResult? Function(String message)? userLevel,
  }) {
    return noData?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_NoData value) noData,
    required TResult Function(_Server value) server,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(_UserLevel value) userLevel,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_Server value)? server,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(_UserLevel value)? userLevel,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_NoData value)? noData,
    TResult Function(_Server value)? server,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _NoData extends CommonFailure {
  const factory _NoData({required final String message}) = _$NoDataImpl;
  const _NoData._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NoDataImplCopyWith<_$NoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerImplCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$ServerImplCopyWith(
          _$ServerImpl value, $Res Function(_$ServerImpl) then) =
      __$$ServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$ServerImplCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res, _$ServerImpl>
    implements _$$ServerImplCopyWith<$Res> {
  __$$ServerImplCopyWithImpl(
      _$ServerImpl _value, $Res Function(_$ServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$ServerImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ServerImpl extends _Server {
  const _$ServerImpl({required this.message, required this.code}) : super._();

  @override
  final String message;
  @override
  final int code;

  @override
  String toString() {
    return 'CommonFailure.server(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      __$$ServerImplCopyWithImpl<_$ServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) userLevel,
  }) {
    return server(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? data,
    TResult? Function(String message)? noData,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message)? noConnection,
    TResult? Function(String message)? userLevel,
  }) {
    return server?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_NoData value) noData,
    required TResult Function(_Server value) server,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(_UserLevel value) userLevel,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_Server value)? server,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(_UserLevel value)? userLevel,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_NoData value)? noData,
    TResult Function(_Server value)? server,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server extends CommonFailure {
  const factory _Server(
      {required final String message, required final int code}) = _$ServerImpl;
  const _Server._() : super._();

  @override
  String get message;
  int get code;
  @override
  @JsonKey(ignore: true)
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionImplCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$NoConnectionImplCopyWith(
          _$NoConnectionImpl value, $Res Function(_$NoConnectionImpl) then) =
      __$$NoConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoConnectionImplCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res, _$NoConnectionImpl>
    implements _$$NoConnectionImplCopyWith<$Res> {
  __$$NoConnectionImplCopyWithImpl(
      _$NoConnectionImpl _value, $Res Function(_$NoConnectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoConnectionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoConnectionImpl extends NoConnection {
  const _$NoConnectionImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CommonFailure.noConnection(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoConnectionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoConnectionImplCopyWith<_$NoConnectionImpl> get copyWith =>
      __$$NoConnectionImplCopyWithImpl<_$NoConnectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) userLevel,
  }) {
    return noConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? data,
    TResult? Function(String message)? noData,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message)? noConnection,
    TResult? Function(String message)? userLevel,
  }) {
    return noConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_NoData value) noData,
    required TResult Function(_Server value) server,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(_UserLevel value) userLevel,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_Server value)? server,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(_UserLevel value)? userLevel,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_NoData value)? noData,
    TResult Function(_Server value)? server,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class NoConnection extends CommonFailure {
  const factory NoConnection({required final String message}) =
      _$NoConnectionImpl;
  const NoConnection._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NoConnectionImplCopyWith<_$NoConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLevelImplCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$UserLevelImplCopyWith(
          _$UserLevelImpl value, $Res Function(_$UserLevelImpl) then) =
      __$$UserLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UserLevelImplCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res, _$UserLevelImpl>
    implements _$$UserLevelImplCopyWith<$Res> {
  __$$UserLevelImplCopyWithImpl(
      _$UserLevelImpl _value, $Res Function(_$UserLevelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UserLevelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLevelImpl extends _UserLevel {
  const _$UserLevelImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CommonFailure.userLevel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLevelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLevelImplCopyWith<_$UserLevelImpl> get copyWith =>
      __$$UserLevelImplCopyWithImpl<_$UserLevelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) userLevel,
  }) {
    return userLevel(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? data,
    TResult? Function(String message)? noData,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message)? noConnection,
    TResult? Function(String message)? userLevel,
  }) {
    return userLevel?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
    required TResult orElse(),
  }) {
    if (userLevel != null) {
      return userLevel(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_NoData value) noData,
    required TResult Function(_Server value) server,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(_UserLevel value) userLevel,
  }) {
    return userLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_Server value)? server,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(_UserLevel value)? userLevel,
  }) {
    return userLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_NoData value)? noData,
    TResult Function(_Server value)? server,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
    required TResult orElse(),
  }) {
    if (userLevel != null) {
      return userLevel(this);
    }
    return orElse();
  }
}

abstract class _UserLevel extends CommonFailure {
  const factory _UserLevel({required final String message}) = _$UserLevelImpl;
  const _UserLevel._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UserLevelImplCopyWith<_$UserLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
