// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkboxtest_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CheckboxtestRecord> _$checkboxtestRecordSerializer =
    new _$CheckboxtestRecordSerializer();

class _$CheckboxtestRecordSerializer
    implements StructuredSerializer<CheckboxtestRecord> {
  @override
  final Iterable<Type> types = const [CheckboxtestRecord, _$CheckboxtestRecord];
  @override
  final String wireName = 'CheckboxtestRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CheckboxtestRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.checklist;
    if (value != null) {
      result
        ..add('checklist')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CheckboxtestRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckboxtestRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'checklist':
          result.checklist.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CheckboxtestRecord extends CheckboxtestRecord {
  @override
  final int? id;
  @override
  final BuiltList<String>? checklist;
  @override
  final String? email;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CheckboxtestRecord(
          [void Function(CheckboxtestRecordBuilder)? updates]) =>
      (new CheckboxtestRecordBuilder()..update(updates))._build();

  _$CheckboxtestRecord._({this.id, this.checklist, this.email, this.ffRef})
      : super._();

  @override
  CheckboxtestRecord rebuild(
          void Function(CheckboxtestRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckboxtestRecordBuilder toBuilder() =>
      new CheckboxtestRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckboxtestRecord &&
        id == other.id &&
        checklist == other.checklist &&
        email == other.email &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), checklist.hashCode), email.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckboxtestRecord')
          ..add('id', id)
          ..add('checklist', checklist)
          ..add('email', email)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CheckboxtestRecordBuilder
    implements Builder<CheckboxtestRecord, CheckboxtestRecordBuilder> {
  _$CheckboxtestRecord? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ListBuilder<String>? _checklist;
  ListBuilder<String> get checklist =>
      _$this._checklist ??= new ListBuilder<String>();
  set checklist(ListBuilder<String>? checklist) =>
      _$this._checklist = checklist;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CheckboxtestRecordBuilder() {
    CheckboxtestRecord._initializeBuilder(this);
  }

  CheckboxtestRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _checklist = $v.checklist?.toBuilder();
      _email = $v.email;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckboxtestRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckboxtestRecord;
  }

  @override
  void update(void Function(CheckboxtestRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckboxtestRecord build() => _build();

  _$CheckboxtestRecord _build() {
    _$CheckboxtestRecord _$result;
    try {
      _$result = _$v ??
          new _$CheckboxtestRecord._(
              id: id,
              checklist: _checklist?.build(),
              email: email,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checklist';
        _checklist?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CheckboxtestRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
