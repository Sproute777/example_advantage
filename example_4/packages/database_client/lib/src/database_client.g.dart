// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_client.dart';

// ignore_for_file: type=lint
class $WeightEntryModelTable extends WeightEntryModel
    with TableInfo<$WeightEntryModelTable, WeightEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WeightEntryModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'timestamp', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  @override
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
      'created', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  @override
  List<GeneratedColumn> get $columns => [id, value, timestamp, created, note];
  @override
  String get aliasedName => _alias ?? 'weight_entry_model';
  @override
  String get actualTableName => 'weight_entry_model';
  @override
  VerificationContext validateIntegrity(Insertable<WeightEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WeightEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WeightEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timestamp'])!,
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
    );
  }

  @override
  $WeightEntryModelTable createAlias(String alias) {
    return $WeightEntryModelTable(attachedDatabase, alias);
  }
}

class WeightEntry extends DataClass implements Insertable<WeightEntry> {
  final int id;
  final double value;
  final DateTime timestamp;
  final DateTime created;
  final String note;
  const WeightEntry(
      {required this.id,
      required this.value,
      required this.timestamp,
      required this.created,
      required this.note});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['value'] = Variable<double>(value);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['created'] = Variable<DateTime>(created);
    map['note'] = Variable<String>(note);
    return map;
  }

  WeightEntryModelCompanion toCompanion(bool nullToAbsent) {
    return WeightEntryModelCompanion(
      id: Value(id),
      value: Value(value),
      timestamp: Value(timestamp),
      created: Value(created),
      note: Value(note),
    );
  }

  factory WeightEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WeightEntry(
      id: serializer.fromJson<int>(json['id']),
      value: serializer.fromJson<double>(json['value']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      created: serializer.fromJson<DateTime>(json['created']),
      note: serializer.fromJson<String>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'value': serializer.toJson<double>(value),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'created': serializer.toJson<DateTime>(created),
      'note': serializer.toJson<String>(note),
    };
  }

  WeightEntry copyWith(
          {int? id,
          double? value,
          DateTime? timestamp,
          DateTime? created,
          String? note}) =>
      WeightEntry(
        id: id ?? this.id,
        value: value ?? this.value,
        timestamp: timestamp ?? this.timestamp,
        created: created ?? this.created,
        note: note ?? this.note,
      );
  @override
  String toString() {
    return (StringBuffer('WeightEntry(')
          ..write('id: $id, ')
          ..write('value: $value, ')
          ..write('timestamp: $timestamp, ')
          ..write('created: $created, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, value, timestamp, created, note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WeightEntry &&
          other.id == this.id &&
          other.value == this.value &&
          other.timestamp == this.timestamp &&
          other.created == this.created &&
          other.note == this.note);
}

class WeightEntryModelCompanion extends UpdateCompanion<WeightEntry> {
  final Value<int> id;
  final Value<double> value;
  final Value<DateTime> timestamp;
  final Value<DateTime> created;
  final Value<String> note;
  const WeightEntryModelCompanion({
    this.id = const Value.absent(),
    this.value = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.created = const Value.absent(),
    this.note = const Value.absent(),
  });
  WeightEntryModelCompanion.insert({
    this.id = const Value.absent(),
    required double value,
    required DateTime timestamp,
    this.created = const Value.absent(),
    this.note = const Value.absent(),
  })  : value = Value(value),
        timestamp = Value(timestamp);
  static Insertable<WeightEntry> custom({
    Expression<int>? id,
    Expression<double>? value,
    Expression<DateTime>? timestamp,
    Expression<DateTime>? created,
    Expression<String>? note,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (value != null) 'value': value,
      if (timestamp != null) 'timestamp': timestamp,
      if (created != null) 'created': created,
      if (note != null) 'note': note,
    });
  }

  WeightEntryModelCompanion copyWith(
      {Value<int>? id,
      Value<double>? value,
      Value<DateTime>? timestamp,
      Value<DateTime>? created,
      Value<String>? note}) {
    return WeightEntryModelCompanion(
      id: id ?? this.id,
      value: value ?? this.value,
      timestamp: timestamp ?? this.timestamp,
      created: created ?? this.created,
      note: note ?? this.note,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WeightEntryModelCompanion(')
          ..write('id: $id, ')
          ..write('value: $value, ')
          ..write('timestamp: $timestamp, ')
          ..write('created: $created, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }
}

class $SettingsEntryModelTable extends SettingsEntryModel
    with TableInfo<$SettingsEntryModelTable, SettingsEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsEntryModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? 'settings_entry_model';
  @override
  String get actualTableName => 'settings_entry_model';
  @override
  VerificationContext validateIntegrity(Insertable<SettingsEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SettingsEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingsEntry(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
    );
  }

  @override
  $SettingsEntryModelTable createAlias(String alias) {
    return $SettingsEntryModelTable(attachedDatabase, alias);
  }
}

class SettingsEntry extends DataClass implements Insertable<SettingsEntry> {
  final String key;
  final String value;
  const SettingsEntry({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  SettingsEntryModelCompanion toCompanion(bool nullToAbsent) {
    return SettingsEntryModelCompanion(
      key: Value(key),
      value: Value(value),
    );
  }

  factory SettingsEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingsEntry(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  SettingsEntry copyWith({String? key, String? value}) => SettingsEntry(
        key: key ?? this.key,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('SettingsEntry(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingsEntry &&
          other.key == this.key &&
          other.value == this.value);
}

class SettingsEntryModelCompanion extends UpdateCompanion<SettingsEntry> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const SettingsEntryModelCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SettingsEntryModelCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  })  : key = Value(key),
        value = Value(value);
  static Insertable<SettingsEntry> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingsEntryModelCompanion copyWith(
      {Value<String>? key, Value<String>? value, Value<int>? rowid}) {
    return SettingsEntryModelCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsEntryModelCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ExerciseEntryModelTable extends ExerciseEntryModel
    with TableInfo<$ExerciseEntryModelTable, ExerciseEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseEntryModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'timestamp', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _durationMeta =
      const VerificationMeta('duration');
  @override
  late final GeneratedColumn<int> duration = GeneratedColumn<int>(
      'duration', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  @override
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
      'created', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, timestamp, duration, created, note, type];
  @override
  String get aliasedName => _alias ?? 'exercise_entry_model';
  @override
  String get actualTableName => 'exercise_entry_model';
  @override
  VerificationContext validateIntegrity(Insertable<ExerciseEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('duration')) {
      context.handle(_durationMeta,
          duration.isAcceptableOrUnknown(data['duration']!, _durationMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExerciseEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timestamp'])!,
      duration: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}duration'])!,
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
    );
  }

  @override
  $ExerciseEntryModelTable createAlias(String alias) {
    return $ExerciseEntryModelTable(attachedDatabase, alias);
  }
}

class ExerciseEntry extends DataClass implements Insertable<ExerciseEntry> {
  final int id;
  final String name;
  final DateTime timestamp;
  final int duration;
  final DateTime created;
  final String note;
  final String? type;
  const ExerciseEntry(
      {required this.id,
      required this.name,
      required this.timestamp,
      required this.duration,
      required this.created,
      required this.note,
      this.type});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['duration'] = Variable<int>(duration);
    map['created'] = Variable<DateTime>(created);
    map['note'] = Variable<String>(note);
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    return map;
  }

  ExerciseEntryModelCompanion toCompanion(bool nullToAbsent) {
    return ExerciseEntryModelCompanion(
      id: Value(id),
      name: Value(name),
      timestamp: Value(timestamp),
      duration: Value(duration),
      created: Value(created),
      note: Value(note),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
    );
  }

  factory ExerciseEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseEntry(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      duration: serializer.fromJson<int>(json['duration']),
      created: serializer.fromJson<DateTime>(json['created']),
      note: serializer.fromJson<String>(json['note']),
      type: serializer.fromJson<String?>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'duration': serializer.toJson<int>(duration),
      'created': serializer.toJson<DateTime>(created),
      'note': serializer.toJson<String>(note),
      'type': serializer.toJson<String?>(type),
    };
  }

  ExerciseEntry copyWith(
          {int? id,
          String? name,
          DateTime? timestamp,
          int? duration,
          DateTime? created,
          String? note,
          Value<String?> type = const Value.absent()}) =>
      ExerciseEntry(
        id: id ?? this.id,
        name: name ?? this.name,
        timestamp: timestamp ?? this.timestamp,
        duration: duration ?? this.duration,
        created: created ?? this.created,
        note: note ?? this.note,
        type: type.present ? type.value : this.type,
      );
  @override
  String toString() {
    return (StringBuffer('ExerciseEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('timestamp: $timestamp, ')
          ..write('duration: $duration, ')
          ..write('created: $created, ')
          ..write('note: $note, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, timestamp, duration, created, note, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.timestamp == this.timestamp &&
          other.duration == this.duration &&
          other.created == this.created &&
          other.note == this.note &&
          other.type == this.type);
}

class ExerciseEntryModelCompanion extends UpdateCompanion<ExerciseEntry> {
  final Value<int> id;
  final Value<String> name;
  final Value<DateTime> timestamp;
  final Value<int> duration;
  final Value<DateTime> created;
  final Value<String> note;
  final Value<String?> type;
  const ExerciseEntryModelCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.duration = const Value.absent(),
    this.created = const Value.absent(),
    this.note = const Value.absent(),
    this.type = const Value.absent(),
  });
  ExerciseEntryModelCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required DateTime timestamp,
    this.duration = const Value.absent(),
    this.created = const Value.absent(),
    this.note = const Value.absent(),
    this.type = const Value.absent(),
  })  : name = Value(name),
        timestamp = Value(timestamp);
  static Insertable<ExerciseEntry> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<DateTime>? timestamp,
    Expression<int>? duration,
    Expression<DateTime>? created,
    Expression<String>? note,
    Expression<String>? type,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (timestamp != null) 'timestamp': timestamp,
      if (duration != null) 'duration': duration,
      if (created != null) 'created': created,
      if (note != null) 'note': note,
      if (type != null) 'type': type,
    });
  }

  ExerciseEntryModelCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<DateTime>? timestamp,
      Value<int>? duration,
      Value<DateTime>? created,
      Value<String>? note,
      Value<String?>? type}) {
    return ExerciseEntryModelCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      timestamp: timestamp ?? this.timestamp,
      duration: duration ?? this.duration,
      created: created ?? this.created,
      note: note ?? this.note,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (duration.present) {
      map['duration'] = Variable<int>(duration.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseEntryModelCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('timestamp: $timestamp, ')
          ..write('duration: $duration, ')
          ..write('created: $created, ')
          ..write('note: $note, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }
}

class $PedometerEntryModelTable extends PedometerEntryModel
    with TableInfo<$PedometerEntryModelTable, PedometerEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PedometerEntryModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'timestamp', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<int> value = GeneratedColumn<int>(
      'value', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, timestamp, value];
  @override
  String get aliasedName => _alias ?? 'pedometer_entry_model';
  @override
  String get actualTableName => 'pedometer_entry_model';
  @override
  VerificationContext validateIntegrity(Insertable<PedometerEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PedometerEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PedometerEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timestamp'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}value'])!,
    );
  }

  @override
  $PedometerEntryModelTable createAlias(String alias) {
    return $PedometerEntryModelTable(attachedDatabase, alias);
  }
}

class PedometerEntry extends DataClass implements Insertable<PedometerEntry> {
  final int id;
  final DateTime timestamp;
  final int value;
  const PedometerEntry(
      {required this.id, required this.timestamp, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['value'] = Variable<int>(value);
    return map;
  }

  PedometerEntryModelCompanion toCompanion(bool nullToAbsent) {
    return PedometerEntryModelCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      value: Value(value),
    );
  }

  factory PedometerEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PedometerEntry(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      value: serializer.fromJson<int>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'value': serializer.toJson<int>(value),
    };
  }

  PedometerEntry copyWith({int? id, DateTime? timestamp, int? value}) =>
      PedometerEntry(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('PedometerEntry(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, timestamp, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PedometerEntry &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.value == this.value);
}

class PedometerEntryModelCompanion extends UpdateCompanion<PedometerEntry> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<int> value;
  const PedometerEntryModelCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.value = const Value.absent(),
  });
  PedometerEntryModelCompanion.insert({
    this.id = const Value.absent(),
    required DateTime timestamp,
    required int value,
  })  : timestamp = Value(timestamp),
        value = Value(value);
  static Insertable<PedometerEntry> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<int>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (value != null) 'value': value,
    });
  }

  PedometerEntryModelCompanion copyWith(
      {Value<int>? id, Value<DateTime>? timestamp, Value<int>? value}) {
    return PedometerEntryModelCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PedometerEntryModelCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

abstract class _$DatabaseImplementation extends GeneratedDatabase {
  _$DatabaseImplementation(QueryExecutor e) : super(e);
  _$DatabaseImplementation.connect(DatabaseConnection c) : super.connect(c);
  late final $WeightEntryModelTable weightEntryModel =
      $WeightEntryModelTable(this);
  late final $SettingsEntryModelTable settingsEntryModel =
      $SettingsEntryModelTable(this);
  late final $ExerciseEntryModelTable exerciseEntryModel =
      $ExerciseEntryModelTable(this);
  late final $PedometerEntryModelTable pedometerEntryModel =
      $PedometerEntryModelTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        weightEntryModel,
        settingsEntryModel,
        exerciseEntryModel,
        pedometerEntryModel
      ];
}
