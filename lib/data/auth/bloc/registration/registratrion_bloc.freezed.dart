// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registratrion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistratrionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) enterPhone,
    required TResult Function() validatePhone,
    required TResult Function(String password) enterPassword,
    required TResult Function(String name, String email) enterNameEmail,
    required TResult Function() completeRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? enterPhone,
    TResult? Function()? validatePhone,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String name, String email)? enterNameEmail,
    TResult? Function()? completeRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? enterPhone,
    TResult Function()? validatePhone,
    TResult Function(String password)? enterPassword,
    TResult Function(String name, String email)? enterNameEmail,
    TResult Function()? completeRegistration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterPhone value) enterPhone,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_EnterNameEmail value) enterNameEmail,
    required TResult Function(_CompleteRegistration value) completeRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterPhone value)? enterPhone,
    TResult? Function(_ValidatePhone value)? validatePhone,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_EnterNameEmail value)? enterNameEmail,
    TResult? Function(_CompleteRegistration value)? completeRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterPhone value)? enterPhone,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_EnterNameEmail value)? enterNameEmail,
    TResult Function(_CompleteRegistration value)? completeRegistration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistratrionEventCopyWith<$Res> {
  factory $RegistratrionEventCopyWith(
          RegistratrionEvent value, $Res Function(RegistratrionEvent) then) =
      _$RegistratrionEventCopyWithImpl<$Res, RegistratrionEvent>;
}

/// @nodoc
class _$RegistratrionEventCopyWithImpl<$Res, $Val extends RegistratrionEvent>
    implements $RegistratrionEventCopyWith<$Res> {
  _$RegistratrionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EnterPhoneImplCopyWith<$Res> {
  factory _$$EnterPhoneImplCopyWith(
          _$EnterPhoneImpl value, $Res Function(_$EnterPhoneImpl) then) =
      __$$EnterPhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$EnterPhoneImplCopyWithImpl<$Res>
    extends _$RegistratrionEventCopyWithImpl<$Res, _$EnterPhoneImpl>
    implements _$$EnterPhoneImplCopyWith<$Res> {
  __$$EnterPhoneImplCopyWithImpl(
      _$EnterPhoneImpl _value, $Res Function(_$EnterPhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$EnterPhoneImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnterPhoneImpl implements _EnterPhone {
  const _$EnterPhoneImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegistratrionEvent.enterPhone(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterPhoneImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterPhoneImplCopyWith<_$EnterPhoneImpl> get copyWith =>
      __$$EnterPhoneImplCopyWithImpl<_$EnterPhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) enterPhone,
    required TResult Function() validatePhone,
    required TResult Function(String password) enterPassword,
    required TResult Function(String name, String email) enterNameEmail,
    required TResult Function() completeRegistration,
  }) {
    return enterPhone(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? enterPhone,
    TResult? Function()? validatePhone,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String name, String email)? enterNameEmail,
    TResult? Function()? completeRegistration,
  }) {
    return enterPhone?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? enterPhone,
    TResult Function()? validatePhone,
    TResult Function(String password)? enterPassword,
    TResult Function(String name, String email)? enterNameEmail,
    TResult Function()? completeRegistration,
    required TResult orElse(),
  }) {
    if (enterPhone != null) {
      return enterPhone(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterPhone value) enterPhone,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_EnterNameEmail value) enterNameEmail,
    required TResult Function(_CompleteRegistration value) completeRegistration,
  }) {
    return enterPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterPhone value)? enterPhone,
    TResult? Function(_ValidatePhone value)? validatePhone,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_EnterNameEmail value)? enterNameEmail,
    TResult? Function(_CompleteRegistration value)? completeRegistration,
  }) {
    return enterPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterPhone value)? enterPhone,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_EnterNameEmail value)? enterNameEmail,
    TResult Function(_CompleteRegistration value)? completeRegistration,
    required TResult orElse(),
  }) {
    if (enterPhone != null) {
      return enterPhone(this);
    }
    return orElse();
  }
}

abstract class _EnterPhone implements RegistratrionEvent {
  const factory _EnterPhone(final String phoneNumber) = _$EnterPhoneImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$EnterPhoneImplCopyWith<_$EnterPhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidatePhoneImplCopyWith<$Res> {
  factory _$$ValidatePhoneImplCopyWith(
          _$ValidatePhoneImpl value, $Res Function(_$ValidatePhoneImpl) then) =
      __$$ValidatePhoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidatePhoneImplCopyWithImpl<$Res>
    extends _$RegistratrionEventCopyWithImpl<$Res, _$ValidatePhoneImpl>
    implements _$$ValidatePhoneImplCopyWith<$Res> {
  __$$ValidatePhoneImplCopyWithImpl(
      _$ValidatePhoneImpl _value, $Res Function(_$ValidatePhoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidatePhoneImpl implements _ValidatePhone {
  const _$ValidatePhoneImpl();

  @override
  String toString() {
    return 'RegistratrionEvent.validatePhone()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidatePhoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) enterPhone,
    required TResult Function() validatePhone,
    required TResult Function(String password) enterPassword,
    required TResult Function(String name, String email) enterNameEmail,
    required TResult Function() completeRegistration,
  }) {
    return validatePhone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? enterPhone,
    TResult? Function()? validatePhone,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String name, String email)? enterNameEmail,
    TResult? Function()? completeRegistration,
  }) {
    return validatePhone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? enterPhone,
    TResult Function()? validatePhone,
    TResult Function(String password)? enterPassword,
    TResult Function(String name, String email)? enterNameEmail,
    TResult Function()? completeRegistration,
    required TResult orElse(),
  }) {
    if (validatePhone != null) {
      return validatePhone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterPhone value) enterPhone,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_EnterNameEmail value) enterNameEmail,
    required TResult Function(_CompleteRegistration value) completeRegistration,
  }) {
    return validatePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterPhone value)? enterPhone,
    TResult? Function(_ValidatePhone value)? validatePhone,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_EnterNameEmail value)? enterNameEmail,
    TResult? Function(_CompleteRegistration value)? completeRegistration,
  }) {
    return validatePhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterPhone value)? enterPhone,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_EnterNameEmail value)? enterNameEmail,
    TResult Function(_CompleteRegistration value)? completeRegistration,
    required TResult orElse(),
  }) {
    if (validatePhone != null) {
      return validatePhone(this);
    }
    return orElse();
  }
}

abstract class _ValidatePhone implements RegistratrionEvent {
  const factory _ValidatePhone() = _$ValidatePhoneImpl;
}

/// @nodoc
abstract class _$$EnterPasswordImplCopyWith<$Res> {
  factory _$$EnterPasswordImplCopyWith(
          _$EnterPasswordImpl value, $Res Function(_$EnterPasswordImpl) then) =
      __$$EnterPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$EnterPasswordImplCopyWithImpl<$Res>
    extends _$RegistratrionEventCopyWithImpl<$Res, _$EnterPasswordImpl>
    implements _$$EnterPasswordImplCopyWith<$Res> {
  __$$EnterPasswordImplCopyWithImpl(
      _$EnterPasswordImpl _value, $Res Function(_$EnterPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$EnterPasswordImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnterPasswordImpl implements _EnterPassword {
  const _$EnterPasswordImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegistratrionEvent.enterPassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterPasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterPasswordImplCopyWith<_$EnterPasswordImpl> get copyWith =>
      __$$EnterPasswordImplCopyWithImpl<_$EnterPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) enterPhone,
    required TResult Function() validatePhone,
    required TResult Function(String password) enterPassword,
    required TResult Function(String name, String email) enterNameEmail,
    required TResult Function() completeRegistration,
  }) {
    return enterPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? enterPhone,
    TResult? Function()? validatePhone,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String name, String email)? enterNameEmail,
    TResult? Function()? completeRegistration,
  }) {
    return enterPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? enterPhone,
    TResult Function()? validatePhone,
    TResult Function(String password)? enterPassword,
    TResult Function(String name, String email)? enterNameEmail,
    TResult Function()? completeRegistration,
    required TResult orElse(),
  }) {
    if (enterPassword != null) {
      return enterPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterPhone value) enterPhone,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_EnterNameEmail value) enterNameEmail,
    required TResult Function(_CompleteRegistration value) completeRegistration,
  }) {
    return enterPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterPhone value)? enterPhone,
    TResult? Function(_ValidatePhone value)? validatePhone,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_EnterNameEmail value)? enterNameEmail,
    TResult? Function(_CompleteRegistration value)? completeRegistration,
  }) {
    return enterPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterPhone value)? enterPhone,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_EnterNameEmail value)? enterNameEmail,
    TResult Function(_CompleteRegistration value)? completeRegistration,
    required TResult orElse(),
  }) {
    if (enterPassword != null) {
      return enterPassword(this);
    }
    return orElse();
  }
}

abstract class _EnterPassword implements RegistratrionEvent {
  const factory _EnterPassword(final String password) = _$EnterPasswordImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$EnterPasswordImplCopyWith<_$EnterPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterNameEmailImplCopyWith<$Res> {
  factory _$$EnterNameEmailImplCopyWith(_$EnterNameEmailImpl value,
          $Res Function(_$EnterNameEmailImpl) then) =
      __$$EnterNameEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$EnterNameEmailImplCopyWithImpl<$Res>
    extends _$RegistratrionEventCopyWithImpl<$Res, _$EnterNameEmailImpl>
    implements _$$EnterNameEmailImplCopyWith<$Res> {
  __$$EnterNameEmailImplCopyWithImpl(
      _$EnterNameEmailImpl _value, $Res Function(_$EnterNameEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$EnterNameEmailImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnterNameEmailImpl implements _EnterNameEmail {
  const _$EnterNameEmailImpl(this.name, this.email);

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'RegistratrionEvent.enterNameEmail(name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterNameEmailImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterNameEmailImplCopyWith<_$EnterNameEmailImpl> get copyWith =>
      __$$EnterNameEmailImplCopyWithImpl<_$EnterNameEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) enterPhone,
    required TResult Function() validatePhone,
    required TResult Function(String password) enterPassword,
    required TResult Function(String name, String email) enterNameEmail,
    required TResult Function() completeRegistration,
  }) {
    return enterNameEmail(name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? enterPhone,
    TResult? Function()? validatePhone,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String name, String email)? enterNameEmail,
    TResult? Function()? completeRegistration,
  }) {
    return enterNameEmail?.call(name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? enterPhone,
    TResult Function()? validatePhone,
    TResult Function(String password)? enterPassword,
    TResult Function(String name, String email)? enterNameEmail,
    TResult Function()? completeRegistration,
    required TResult orElse(),
  }) {
    if (enterNameEmail != null) {
      return enterNameEmail(name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterPhone value) enterPhone,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_EnterNameEmail value) enterNameEmail,
    required TResult Function(_CompleteRegistration value) completeRegistration,
  }) {
    return enterNameEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterPhone value)? enterPhone,
    TResult? Function(_ValidatePhone value)? validatePhone,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_EnterNameEmail value)? enterNameEmail,
    TResult? Function(_CompleteRegistration value)? completeRegistration,
  }) {
    return enterNameEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterPhone value)? enterPhone,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_EnterNameEmail value)? enterNameEmail,
    TResult Function(_CompleteRegistration value)? completeRegistration,
    required TResult orElse(),
  }) {
    if (enterNameEmail != null) {
      return enterNameEmail(this);
    }
    return orElse();
  }
}

abstract class _EnterNameEmail implements RegistratrionEvent {
  const factory _EnterNameEmail(final String name, final String email) =
      _$EnterNameEmailImpl;

  String get name;
  String get email;
  @JsonKey(ignore: true)
  _$$EnterNameEmailImplCopyWith<_$EnterNameEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteRegistrationImplCopyWith<$Res> {
  factory _$$CompleteRegistrationImplCopyWith(_$CompleteRegistrationImpl value,
          $Res Function(_$CompleteRegistrationImpl) then) =
      __$$CompleteRegistrationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteRegistrationImplCopyWithImpl<$Res>
    extends _$RegistratrionEventCopyWithImpl<$Res, _$CompleteRegistrationImpl>
    implements _$$CompleteRegistrationImplCopyWith<$Res> {
  __$$CompleteRegistrationImplCopyWithImpl(_$CompleteRegistrationImpl _value,
      $Res Function(_$CompleteRegistrationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompleteRegistrationImpl implements _CompleteRegistration {
  const _$CompleteRegistrationImpl();

  @override
  String toString() {
    return 'RegistratrionEvent.completeRegistration()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteRegistrationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) enterPhone,
    required TResult Function() validatePhone,
    required TResult Function(String password) enterPassword,
    required TResult Function(String name, String email) enterNameEmail,
    required TResult Function() completeRegistration,
  }) {
    return completeRegistration();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? enterPhone,
    TResult? Function()? validatePhone,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String name, String email)? enterNameEmail,
    TResult? Function()? completeRegistration,
  }) {
    return completeRegistration?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? enterPhone,
    TResult Function()? validatePhone,
    TResult Function(String password)? enterPassword,
    TResult Function(String name, String email)? enterNameEmail,
    TResult Function()? completeRegistration,
    required TResult orElse(),
  }) {
    if (completeRegistration != null) {
      return completeRegistration();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterPhone value) enterPhone,
    required TResult Function(_ValidatePhone value) validatePhone,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_EnterNameEmail value) enterNameEmail,
    required TResult Function(_CompleteRegistration value) completeRegistration,
  }) {
    return completeRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterPhone value)? enterPhone,
    TResult? Function(_ValidatePhone value)? validatePhone,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_EnterNameEmail value)? enterNameEmail,
    TResult? Function(_CompleteRegistration value)? completeRegistration,
  }) {
    return completeRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterPhone value)? enterPhone,
    TResult Function(_ValidatePhone value)? validatePhone,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_EnterNameEmail value)? enterNameEmail,
    TResult Function(_CompleteRegistration value)? completeRegistration,
    required TResult orElse(),
  }) {
    if (completeRegistration != null) {
      return completeRegistration(this);
    }
    return orElse();
  }
}

abstract class _CompleteRegistration implements RegistratrionEvent {
  const factory _CompleteRegistration() = _$CompleteRegistrationImpl;
}

/// @nodoc
mixin _$RegistratrionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) phoneEntered,
    required TResult Function() phoneValidated,
    required TResult Function(String password) passwordEntered,
    required TResult Function(String name, String email) nameEmailEntered,
    required TResult Function(AuthResponseModel response) registrationCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? phoneEntered,
    TResult? Function()? phoneValidated,
    TResult? Function(String password)? passwordEntered,
    TResult? Function(String name, String email)? nameEmailEntered,
    TResult? Function(AuthResponseModel response)? registrationCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? phoneEntered,
    TResult Function()? phoneValidated,
    TResult Function(String password)? passwordEntered,
    TResult Function(String name, String email)? nameEmailEntered,
    TResult Function(AuthResponseModel response)? registrationCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PhoneEntered value) phoneEntered,
    required TResult Function(_PhoneValidated value) phoneValidated,
    required TResult Function(_PasswordEntered value) passwordEntered,
    required TResult Function(_NameEmailEntered value) nameEmailEntered,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhoneEntered value)? phoneEntered,
    TResult? Function(_PhoneValidated value)? phoneValidated,
    TResult? Function(_PasswordEntered value)? passwordEntered,
    TResult? Function(_NameEmailEntered value)? nameEmailEntered,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhoneEntered value)? phoneEntered,
    TResult Function(_PhoneValidated value)? phoneValidated,
    TResult Function(_PasswordEntered value)? passwordEntered,
    TResult Function(_NameEmailEntered value)? nameEmailEntered,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistratrionStateCopyWith<$Res> {
  factory $RegistratrionStateCopyWith(
          RegistratrionState value, $Res Function(RegistratrionState) then) =
      _$RegistratrionStateCopyWithImpl<$Res, RegistratrionState>;
}

/// @nodoc
class _$RegistratrionStateCopyWithImpl<$Res, $Val extends RegistratrionState>
    implements $RegistratrionStateCopyWith<$Res> {
  _$RegistratrionStateCopyWithImpl(this._value, this._then);

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
    extends _$RegistratrionStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RegistratrionState.initial()';
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
    required TResult Function(String phoneNumber) phoneEntered,
    required TResult Function() phoneValidated,
    required TResult Function(String password) passwordEntered,
    required TResult Function(String name, String email) nameEmailEntered,
    required TResult Function(AuthResponseModel response) registrationCompleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? phoneEntered,
    TResult? Function()? phoneValidated,
    TResult? Function(String password)? passwordEntered,
    TResult? Function(String name, String email)? nameEmailEntered,
    TResult? Function(AuthResponseModel response)? registrationCompleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? phoneEntered,
    TResult Function()? phoneValidated,
    TResult Function(String password)? passwordEntered,
    TResult Function(String name, String email)? nameEmailEntered,
    TResult Function(AuthResponseModel response)? registrationCompleted,
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
    required TResult Function(_PhoneEntered value) phoneEntered,
    required TResult Function(_PhoneValidated value) phoneValidated,
    required TResult Function(_PasswordEntered value) passwordEntered,
    required TResult Function(_NameEmailEntered value) nameEmailEntered,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhoneEntered value)? phoneEntered,
    TResult? Function(_PhoneValidated value)? phoneValidated,
    TResult? Function(_PasswordEntered value)? passwordEntered,
    TResult? Function(_NameEmailEntered value)? nameEmailEntered,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhoneEntered value)? phoneEntered,
    TResult Function(_PhoneValidated value)? phoneValidated,
    TResult Function(_PasswordEntered value)? passwordEntered,
    TResult Function(_NameEmailEntered value)? nameEmailEntered,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegistratrionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PhoneEnteredImplCopyWith<$Res> {
  factory _$$PhoneEnteredImplCopyWith(
          _$PhoneEnteredImpl value, $Res Function(_$PhoneEnteredImpl) then) =
      __$$PhoneEnteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneEnteredImplCopyWithImpl<$Res>
    extends _$RegistratrionStateCopyWithImpl<$Res, _$PhoneEnteredImpl>
    implements _$$PhoneEnteredImplCopyWith<$Res> {
  __$$PhoneEnteredImplCopyWithImpl(
      _$PhoneEnteredImpl _value, $Res Function(_$PhoneEnteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneEnteredImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneEnteredImpl implements _PhoneEntered {
  const _$PhoneEnteredImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegistratrionState.phoneEntered(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneEnteredImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneEnteredImplCopyWith<_$PhoneEnteredImpl> get copyWith =>
      __$$PhoneEnteredImplCopyWithImpl<_$PhoneEnteredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) phoneEntered,
    required TResult Function() phoneValidated,
    required TResult Function(String password) passwordEntered,
    required TResult Function(String name, String email) nameEmailEntered,
    required TResult Function(AuthResponseModel response) registrationCompleted,
  }) {
    return phoneEntered(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? phoneEntered,
    TResult? Function()? phoneValidated,
    TResult? Function(String password)? passwordEntered,
    TResult? Function(String name, String email)? nameEmailEntered,
    TResult? Function(AuthResponseModel response)? registrationCompleted,
  }) {
    return phoneEntered?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? phoneEntered,
    TResult Function()? phoneValidated,
    TResult Function(String password)? passwordEntered,
    TResult Function(String name, String email)? nameEmailEntered,
    TResult Function(AuthResponseModel response)? registrationCompleted,
    required TResult orElse(),
  }) {
    if (phoneEntered != null) {
      return phoneEntered(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PhoneEntered value) phoneEntered,
    required TResult Function(_PhoneValidated value) phoneValidated,
    required TResult Function(_PasswordEntered value) passwordEntered,
    required TResult Function(_NameEmailEntered value) nameEmailEntered,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
  }) {
    return phoneEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhoneEntered value)? phoneEntered,
    TResult? Function(_PhoneValidated value)? phoneValidated,
    TResult? Function(_PasswordEntered value)? passwordEntered,
    TResult? Function(_NameEmailEntered value)? nameEmailEntered,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
  }) {
    return phoneEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhoneEntered value)? phoneEntered,
    TResult Function(_PhoneValidated value)? phoneValidated,
    TResult Function(_PasswordEntered value)? passwordEntered,
    TResult Function(_NameEmailEntered value)? nameEmailEntered,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    required TResult orElse(),
  }) {
    if (phoneEntered != null) {
      return phoneEntered(this);
    }
    return orElse();
  }
}

abstract class _PhoneEntered implements RegistratrionState {
  const factory _PhoneEntered(final String phoneNumber) = _$PhoneEnteredImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneEnteredImplCopyWith<_$PhoneEnteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneValidatedImplCopyWith<$Res> {
  factory _$$PhoneValidatedImplCopyWith(_$PhoneValidatedImpl value,
          $Res Function(_$PhoneValidatedImpl) then) =
      __$$PhoneValidatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhoneValidatedImplCopyWithImpl<$Res>
    extends _$RegistratrionStateCopyWithImpl<$Res, _$PhoneValidatedImpl>
    implements _$$PhoneValidatedImplCopyWith<$Res> {
  __$$PhoneValidatedImplCopyWithImpl(
      _$PhoneValidatedImpl _value, $Res Function(_$PhoneValidatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PhoneValidatedImpl implements _PhoneValidated {
  const _$PhoneValidatedImpl();

  @override
  String toString() {
    return 'RegistratrionState.phoneValidated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PhoneValidatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) phoneEntered,
    required TResult Function() phoneValidated,
    required TResult Function(String password) passwordEntered,
    required TResult Function(String name, String email) nameEmailEntered,
    required TResult Function(AuthResponseModel response) registrationCompleted,
  }) {
    return phoneValidated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? phoneEntered,
    TResult? Function()? phoneValidated,
    TResult? Function(String password)? passwordEntered,
    TResult? Function(String name, String email)? nameEmailEntered,
    TResult? Function(AuthResponseModel response)? registrationCompleted,
  }) {
    return phoneValidated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? phoneEntered,
    TResult Function()? phoneValidated,
    TResult Function(String password)? passwordEntered,
    TResult Function(String name, String email)? nameEmailEntered,
    TResult Function(AuthResponseModel response)? registrationCompleted,
    required TResult orElse(),
  }) {
    if (phoneValidated != null) {
      return phoneValidated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PhoneEntered value) phoneEntered,
    required TResult Function(_PhoneValidated value) phoneValidated,
    required TResult Function(_PasswordEntered value) passwordEntered,
    required TResult Function(_NameEmailEntered value) nameEmailEntered,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
  }) {
    return phoneValidated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhoneEntered value)? phoneEntered,
    TResult? Function(_PhoneValidated value)? phoneValidated,
    TResult? Function(_PasswordEntered value)? passwordEntered,
    TResult? Function(_NameEmailEntered value)? nameEmailEntered,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
  }) {
    return phoneValidated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhoneEntered value)? phoneEntered,
    TResult Function(_PhoneValidated value)? phoneValidated,
    TResult Function(_PasswordEntered value)? passwordEntered,
    TResult Function(_NameEmailEntered value)? nameEmailEntered,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    required TResult orElse(),
  }) {
    if (phoneValidated != null) {
      return phoneValidated(this);
    }
    return orElse();
  }
}

abstract class _PhoneValidated implements RegistratrionState {
  const factory _PhoneValidated() = _$PhoneValidatedImpl;
}

/// @nodoc
abstract class _$$PasswordEnteredImplCopyWith<$Res> {
  factory _$$PasswordEnteredImplCopyWith(_$PasswordEnteredImpl value,
          $Res Function(_$PasswordEnteredImpl) then) =
      __$$PasswordEnteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordEnteredImplCopyWithImpl<$Res>
    extends _$RegistratrionStateCopyWithImpl<$Res, _$PasswordEnteredImpl>
    implements _$$PasswordEnteredImplCopyWith<$Res> {
  __$$PasswordEnteredImplCopyWithImpl(
      _$PasswordEnteredImpl _value, $Res Function(_$PasswordEnteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordEnteredImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordEnteredImpl implements _PasswordEntered {
  const _$PasswordEnteredImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegistratrionState.passwordEntered(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordEnteredImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordEnteredImplCopyWith<_$PasswordEnteredImpl> get copyWith =>
      __$$PasswordEnteredImplCopyWithImpl<_$PasswordEnteredImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) phoneEntered,
    required TResult Function() phoneValidated,
    required TResult Function(String password) passwordEntered,
    required TResult Function(String name, String email) nameEmailEntered,
    required TResult Function(AuthResponseModel response) registrationCompleted,
  }) {
    return passwordEntered(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? phoneEntered,
    TResult? Function()? phoneValidated,
    TResult? Function(String password)? passwordEntered,
    TResult? Function(String name, String email)? nameEmailEntered,
    TResult? Function(AuthResponseModel response)? registrationCompleted,
  }) {
    return passwordEntered?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? phoneEntered,
    TResult Function()? phoneValidated,
    TResult Function(String password)? passwordEntered,
    TResult Function(String name, String email)? nameEmailEntered,
    TResult Function(AuthResponseModel response)? registrationCompleted,
    required TResult orElse(),
  }) {
    if (passwordEntered != null) {
      return passwordEntered(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PhoneEntered value) phoneEntered,
    required TResult Function(_PhoneValidated value) phoneValidated,
    required TResult Function(_PasswordEntered value) passwordEntered,
    required TResult Function(_NameEmailEntered value) nameEmailEntered,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
  }) {
    return passwordEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhoneEntered value)? phoneEntered,
    TResult? Function(_PhoneValidated value)? phoneValidated,
    TResult? Function(_PasswordEntered value)? passwordEntered,
    TResult? Function(_NameEmailEntered value)? nameEmailEntered,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
  }) {
    return passwordEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhoneEntered value)? phoneEntered,
    TResult Function(_PhoneValidated value)? phoneValidated,
    TResult Function(_PasswordEntered value)? passwordEntered,
    TResult Function(_NameEmailEntered value)? nameEmailEntered,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    required TResult orElse(),
  }) {
    if (passwordEntered != null) {
      return passwordEntered(this);
    }
    return orElse();
  }
}

abstract class _PasswordEntered implements RegistratrionState {
  const factory _PasswordEntered(final String password) = _$PasswordEnteredImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordEnteredImplCopyWith<_$PasswordEnteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameEmailEnteredImplCopyWith<$Res> {
  factory _$$NameEmailEnteredImplCopyWith(_$NameEmailEnteredImpl value,
          $Res Function(_$NameEmailEnteredImpl) then) =
      __$$NameEmailEnteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$NameEmailEnteredImplCopyWithImpl<$Res>
    extends _$RegistratrionStateCopyWithImpl<$Res, _$NameEmailEnteredImpl>
    implements _$$NameEmailEnteredImplCopyWith<$Res> {
  __$$NameEmailEnteredImplCopyWithImpl(_$NameEmailEnteredImpl _value,
      $Res Function(_$NameEmailEnteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$NameEmailEnteredImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameEmailEnteredImpl implements _NameEmailEntered {
  const _$NameEmailEnteredImpl(this.name, this.email);

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'RegistratrionState.nameEmailEntered(name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameEmailEnteredImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameEmailEnteredImplCopyWith<_$NameEmailEnteredImpl> get copyWith =>
      __$$NameEmailEnteredImplCopyWithImpl<_$NameEmailEnteredImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) phoneEntered,
    required TResult Function() phoneValidated,
    required TResult Function(String password) passwordEntered,
    required TResult Function(String name, String email) nameEmailEntered,
    required TResult Function(AuthResponseModel response) registrationCompleted,
  }) {
    return nameEmailEntered(name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? phoneEntered,
    TResult? Function()? phoneValidated,
    TResult? Function(String password)? passwordEntered,
    TResult? Function(String name, String email)? nameEmailEntered,
    TResult? Function(AuthResponseModel response)? registrationCompleted,
  }) {
    return nameEmailEntered?.call(name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? phoneEntered,
    TResult Function()? phoneValidated,
    TResult Function(String password)? passwordEntered,
    TResult Function(String name, String email)? nameEmailEntered,
    TResult Function(AuthResponseModel response)? registrationCompleted,
    required TResult orElse(),
  }) {
    if (nameEmailEntered != null) {
      return nameEmailEntered(name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PhoneEntered value) phoneEntered,
    required TResult Function(_PhoneValidated value) phoneValidated,
    required TResult Function(_PasswordEntered value) passwordEntered,
    required TResult Function(_NameEmailEntered value) nameEmailEntered,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
  }) {
    return nameEmailEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhoneEntered value)? phoneEntered,
    TResult? Function(_PhoneValidated value)? phoneValidated,
    TResult? Function(_PasswordEntered value)? passwordEntered,
    TResult? Function(_NameEmailEntered value)? nameEmailEntered,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
  }) {
    return nameEmailEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhoneEntered value)? phoneEntered,
    TResult Function(_PhoneValidated value)? phoneValidated,
    TResult Function(_PasswordEntered value)? passwordEntered,
    TResult Function(_NameEmailEntered value)? nameEmailEntered,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    required TResult orElse(),
  }) {
    if (nameEmailEntered != null) {
      return nameEmailEntered(this);
    }
    return orElse();
  }
}

abstract class _NameEmailEntered implements RegistratrionState {
  const factory _NameEmailEntered(final String name, final String email) =
      _$NameEmailEnteredImpl;

  String get name;
  String get email;
  @JsonKey(ignore: true)
  _$$NameEmailEnteredImplCopyWith<_$NameEmailEnteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationCompletedImplCopyWith<$Res> {
  factory _$$RegistrationCompletedImplCopyWith(
          _$RegistrationCompletedImpl value,
          $Res Function(_$RegistrationCompletedImpl) then) =
      __$$RegistrationCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponseModel response});
}

/// @nodoc
class __$$RegistrationCompletedImplCopyWithImpl<$Res>
    extends _$RegistratrionStateCopyWithImpl<$Res, _$RegistrationCompletedImpl>
    implements _$$RegistrationCompletedImplCopyWith<$Res> {
  __$$RegistrationCompletedImplCopyWithImpl(_$RegistrationCompletedImpl _value,
      $Res Function(_$RegistrationCompletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$RegistrationCompletedImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel,
    ));
  }
}

/// @nodoc

class _$RegistrationCompletedImpl implements _RegistrationCompleted {
  const _$RegistrationCompletedImpl(this.response);

  @override
  final AuthResponseModel response;

  @override
  String toString() {
    return 'RegistratrionState.registrationCompleted(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationCompletedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationCompletedImplCopyWith<_$RegistrationCompletedImpl>
      get copyWith => __$$RegistrationCompletedImplCopyWithImpl<
          _$RegistrationCompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) phoneEntered,
    required TResult Function() phoneValidated,
    required TResult Function(String password) passwordEntered,
    required TResult Function(String name, String email) nameEmailEntered,
    required TResult Function(AuthResponseModel response) registrationCompleted,
  }) {
    return registrationCompleted(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? phoneEntered,
    TResult? Function()? phoneValidated,
    TResult? Function(String password)? passwordEntered,
    TResult? Function(String name, String email)? nameEmailEntered,
    TResult? Function(AuthResponseModel response)? registrationCompleted,
  }) {
    return registrationCompleted?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? phoneEntered,
    TResult Function()? phoneValidated,
    TResult Function(String password)? passwordEntered,
    TResult Function(String name, String email)? nameEmailEntered,
    TResult Function(AuthResponseModel response)? registrationCompleted,
    required TResult orElse(),
  }) {
    if (registrationCompleted != null) {
      return registrationCompleted(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PhoneEntered value) phoneEntered,
    required TResult Function(_PhoneValidated value) phoneValidated,
    required TResult Function(_PasswordEntered value) passwordEntered,
    required TResult Function(_NameEmailEntered value) nameEmailEntered,
    required TResult Function(_RegistrationCompleted value)
        registrationCompleted,
  }) {
    return registrationCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhoneEntered value)? phoneEntered,
    TResult? Function(_PhoneValidated value)? phoneValidated,
    TResult? Function(_PasswordEntered value)? passwordEntered,
    TResult? Function(_NameEmailEntered value)? nameEmailEntered,
    TResult? Function(_RegistrationCompleted value)? registrationCompleted,
  }) {
    return registrationCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhoneEntered value)? phoneEntered,
    TResult Function(_PhoneValidated value)? phoneValidated,
    TResult Function(_PasswordEntered value)? passwordEntered,
    TResult Function(_NameEmailEntered value)? nameEmailEntered,
    TResult Function(_RegistrationCompleted value)? registrationCompleted,
    required TResult orElse(),
  }) {
    if (registrationCompleted != null) {
      return registrationCompleted(this);
    }
    return orElse();
  }
}

abstract class _RegistrationCompleted implements RegistratrionState {
  const factory _RegistrationCompleted(final AuthResponseModel response) =
      _$RegistrationCompletedImpl;

  AuthResponseModel get response;
  @JsonKey(ignore: true)
  _$$RegistrationCompletedImplCopyWith<_$RegistrationCompletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
