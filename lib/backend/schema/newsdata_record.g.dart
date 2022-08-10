// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newsdata_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewsdataRecord> _$newsdataRecordSerializer =
    new _$NewsdataRecordSerializer();

class _$NewsdataRecordSerializer
    implements StructuredSerializer<NewsdataRecord> {
  @override
  final Iterable<Type> types = const [NewsdataRecord, _$NewsdataRecord];
  @override
  final String wireName = 'NewsdataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NewsdataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.headline;
    if (value != null) {
      result
        ..add('headline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minread;
    if (value != null) {
      result
        ..add('minread')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.datetime;
    if (value != null) {
      result
        ..add('datetime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.newsid;
    if (value != null) {
      result
        ..add('newsid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
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
  NewsdataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsdataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'headline':
          result.headline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'minread':
          result.minread = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'datetime':
          result.datetime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'newsid':
          result.newsid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tags':
          result.tags = serializers.deserialize(value,
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

class _$NewsdataRecord extends NewsdataRecord {
  @override
  final String? headline;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final int? minread;
  @override
  final DateTime? datetime;
  @override
  final int? newsid;
  @override
  final String? tags;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NewsdataRecord([void Function(NewsdataRecordBuilder)? updates]) =>
      (new NewsdataRecordBuilder()..update(updates))._build();

  _$NewsdataRecord._(
      {this.headline,
      this.description,
      this.image,
      this.minread,
      this.datetime,
      this.newsid,
      this.tags,
      this.ffRef})
      : super._();

  @override
  NewsdataRecord rebuild(void Function(NewsdataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsdataRecordBuilder toBuilder() =>
      new NewsdataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsdataRecord &&
        headline == other.headline &&
        description == other.description &&
        image == other.image &&
        minread == other.minread &&
        datetime == other.datetime &&
        newsid == other.newsid &&
        tags == other.tags &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, headline.hashCode),
                                description.hashCode),
                            image.hashCode),
                        minread.hashCode),
                    datetime.hashCode),
                newsid.hashCode),
            tags.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsdataRecord')
          ..add('headline', headline)
          ..add('description', description)
          ..add('image', image)
          ..add('minread', minread)
          ..add('datetime', datetime)
          ..add('newsid', newsid)
          ..add('tags', tags)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NewsdataRecordBuilder
    implements Builder<NewsdataRecord, NewsdataRecordBuilder> {
  _$NewsdataRecord? _$v;

  String? _headline;
  String? get headline => _$this._headline;
  set headline(String? headline) => _$this._headline = headline;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _minread;
  int? get minread => _$this._minread;
  set minread(int? minread) => _$this._minread = minread;

  DateTime? _datetime;
  DateTime? get datetime => _$this._datetime;
  set datetime(DateTime? datetime) => _$this._datetime = datetime;

  int? _newsid;
  int? get newsid => _$this._newsid;
  set newsid(int? newsid) => _$this._newsid = newsid;

  String? _tags;
  String? get tags => _$this._tags;
  set tags(String? tags) => _$this._tags = tags;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NewsdataRecordBuilder() {
    NewsdataRecord._initializeBuilder(this);
  }

  NewsdataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _headline = $v.headline;
      _description = $v.description;
      _image = $v.image;
      _minread = $v.minread;
      _datetime = $v.datetime;
      _newsid = $v.newsid;
      _tags = $v.tags;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsdataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsdataRecord;
  }

  @override
  void update(void Function(NewsdataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsdataRecord build() => _build();

  _$NewsdataRecord _build() {
    final _$result = _$v ??
        new _$NewsdataRecord._(
            headline: headline,
            description: description,
            image: image,
            minread: minread,
            datetime: datetime,
            newsid: newsid,
            tags: tags,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
