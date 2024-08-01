// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kode_otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KodeOtpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(OTPRequestModel otpRequestModel) sendOTP,
    required TResult Function(OTPRequestModel otpRequestModel) verifyOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(OTPRequestModel otpRequestModel)? sendOTP,
    TResult? Function(OTPRequestModel otpRequestModel)? verifyOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(OTPRequestModel otpRequestModel)? sendOTP,
    TResult Function(OTPRequestModel otpRequestModel)? verifyOTP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KodeOtpEventCopyWith<$Res> {
  factory $KodeOtpEventCopyWith(
          KodeOtpEvent value, $Res Function(KodeOtpEvent) then) =
      _$KodeOtpEventCopyWithImpl<$Res, KodeOtpEvent>;
}

/// @nodoc
class _$KodeOtpEventCopyWithImpl<$Res, $Val extends KodeOtpEvent>
    implements $KodeOtpEventCopyWith<$Res> {
  _$KodeOtpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$KodeOtpEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'KodeOtpEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(OTPRequestModel otpRequestModel) sendOTP,
    required TResult Function(OTPRequestModel otpRequestModel) verifyOTP,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(OTPRequestModel otpRequestModel)? sendOTP,
    TResult? Function(OTPRequestModel otpRequestModel)? verifyOTP,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(OTPRequestModel otpRequestModel)? sendOTP,
    TResult Function(OTPRequestModel otpRequestModel)? verifyOTP,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements KodeOtpEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SendOTPImplCopyWith<$Res> {
  factory _$$SendOTPImplCopyWith(
          _$SendOTPImpl value, $Res Function(_$SendOTPImpl) then) =
      __$$SendOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OTPRequestModel otpRequestModel});
}

/// @nodoc
class __$$SendOTPImplCopyWithImpl<$Res>
    extends _$KodeOtpEventCopyWithImpl<$Res, _$SendOTPImpl>
    implements _$$SendOTPImplCopyWith<$Res> {
  __$$SendOTPImplCopyWithImpl(
      _$SendOTPImpl _value, $Res Function(_$SendOTPImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpRequestModel = null,
  }) {
    return _then(_$SendOTPImpl(
      otpRequestModel: null == otpRequestModel
          ? _value.otpRequestModel
          : otpRequestModel // ignore: cast_nullable_to_non_nullable
              as OTPRequestModel,
    ));
  }
}

/// @nodoc

class _$SendOTPImpl implements _SendOTP {
  const _$SendOTPImpl({required this.otpRequestModel});

  @override
  final OTPRequestModel otpRequestModel;

  @override
  String toString() {
    return 'KodeOtpEvent.sendOTP(otpRequestModel: $otpRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOTPImpl &&
            (identical(other.otpRequestModel, otpRequestModel) ||
                other.otpRequestModel == otpRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOTPImplCopyWith<_$SendOTPImpl> get copyWith =>
      __$$SendOTPImplCopyWithImpl<_$SendOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(OTPRequestModel otpRequestModel) sendOTP,
    required TResult Function(OTPRequestModel otpRequestModel) verifyOTP,
  }) {
    return sendOTP(otpRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(OTPRequestModel otpRequestModel)? sendOTP,
    TResult? Function(OTPRequestModel otpRequestModel)? verifyOTP,
  }) {
    return sendOTP?.call(otpRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(OTPRequestModel otpRequestModel)? sendOTP,
    TResult Function(OTPRequestModel otpRequestModel)? verifyOTP,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(otpRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
  }) {
    return sendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
  }) {
    return sendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(this);
    }
    return orElse();
  }
}

abstract class _SendOTP implements KodeOtpEvent {
  const factory _SendOTP({required final OTPRequestModel otpRequestModel}) =
      _$SendOTPImpl;

  OTPRequestModel get otpRequestModel;
  @JsonKey(ignore: true)
  _$$SendOTPImplCopyWith<_$SendOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOTPImplCopyWith<$Res> {
  factory _$$VerifyOTPImplCopyWith(
          _$VerifyOTPImpl value, $Res Function(_$VerifyOTPImpl) then) =
      __$$VerifyOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OTPRequestModel otpRequestModel});
}

/// @nodoc
class __$$VerifyOTPImplCopyWithImpl<$Res>
    extends _$KodeOtpEventCopyWithImpl<$Res, _$VerifyOTPImpl>
    implements _$$VerifyOTPImplCopyWith<$Res> {
  __$$VerifyOTPImplCopyWithImpl(
      _$VerifyOTPImpl _value, $Res Function(_$VerifyOTPImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpRequestModel = null,
  }) {
    return _then(_$VerifyOTPImpl(
      otpRequestModel: null == otpRequestModel
          ? _value.otpRequestModel
          : otpRequestModel // ignore: cast_nullable_to_non_nullable
              as OTPRequestModel,
    ));
  }
}

/// @nodoc

class _$VerifyOTPImpl implements _VerifyOTP {
  const _$VerifyOTPImpl({required this.otpRequestModel});

  @override
  final OTPRequestModel otpRequestModel;

  @override
  String toString() {
    return 'KodeOtpEvent.verifyOTP(otpRequestModel: $otpRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPImpl &&
            (identical(other.otpRequestModel, otpRequestModel) ||
                other.otpRequestModel == otpRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOTPImplCopyWith<_$VerifyOTPImpl> get copyWith =>
      __$$VerifyOTPImplCopyWithImpl<_$VerifyOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(OTPRequestModel otpRequestModel) sendOTP,
    required TResult Function(OTPRequestModel otpRequestModel) verifyOTP,
  }) {
    return verifyOTP(otpRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(OTPRequestModel otpRequestModel)? sendOTP,
    TResult? Function(OTPRequestModel otpRequestModel)? verifyOTP,
  }) {
    return verifyOTP?.call(otpRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(OTPRequestModel otpRequestModel)? sendOTP,
    TResult Function(OTPRequestModel otpRequestModel)? verifyOTP,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(otpRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
  }) {
    return verifyOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
  }) {
    return verifyOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(this);
    }
    return orElse();
  }
}

abstract class _VerifyOTP implements KodeOtpEvent {
  const factory _VerifyOTP({required final OTPRequestModel otpRequestModel}) =
      _$VerifyOTPImpl;

  OTPRequestModel get otpRequestModel;
  @JsonKey(ignore: true)
  _$$VerifyOTPImplCopyWith<_$VerifyOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KodeOtpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(OTPResponseModel responseModel) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(OTPResponseModel responseModel)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(OTPResponseModel responseModel)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KodeOtpStateCopyWith<$Res> {
  factory $KodeOtpStateCopyWith(
          KodeOtpState value, $Res Function(KodeOtpState) then) =
      _$KodeOtpStateCopyWithImpl<$Res, KodeOtpState>;
}

/// @nodoc
class _$KodeOtpStateCopyWithImpl<$Res, $Val extends KodeOtpState>
    implements $KodeOtpStateCopyWith<$Res> {
  _$KodeOtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$KodeOtpStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'KodeOtpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(OTPResponseModel responseModel) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(OTPResponseModel responseModel)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(OTPResponseModel responseModel)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements KodeOtpState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$KodeOtpStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'KodeOtpState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(OTPResponseModel responseModel) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(OTPResponseModel responseModel)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(OTPResponseModel responseModel)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements KodeOtpState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$KodeOtpStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'KodeOtpState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(OTPResponseModel responseModel) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(OTPResponseModel responseModel)? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(OTPResponseModel responseModel)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements KodeOtpState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OTPResponseModel responseModel});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$KodeOtpStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseModel = null,
  }) {
    return _then(_$SuccessImpl(
      null == responseModel
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as OTPResponseModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.responseModel);

  @override
  final OTPResponseModel responseModel;

  @override
  String toString() {
    return 'KodeOtpState.success(responseModel: $responseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.responseModel, responseModel) ||
                other.responseModel == responseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(OTPResponseModel responseModel) success,
  }) {
    return success(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(OTPResponseModel responseModel)? success,
  }) {
    return success?.call(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(OTPResponseModel responseModel)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(responseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements KodeOtpState {
  const factory _Success(final OTPResponseModel responseModel) = _$SuccessImpl;

  OTPResponseModel get responseModel;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
