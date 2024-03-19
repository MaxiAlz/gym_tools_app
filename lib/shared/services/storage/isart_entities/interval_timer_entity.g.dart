// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval_timer_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIntervalTimerCollection on Isar {
  IsarCollection<IntervalTimer> get intervalTimers => this.collection();
}

const IntervalTimerSchema = CollectionSchema(
  name: r'IntervalTimer',
  id: 4260287774502612497,
  properties: {
    r'preWorkout': PropertySchema(
      id: 0,
      name: r'preWorkout',
      type: IsarType.object,
      target: r'Timer',
    ),
    r'rest': PropertySchema(
      id: 1,
      name: r'rest',
      type: IsarType.object,
      target: r'Timer',
    ),
    r'sets': PropertySchema(
      id: 2,
      name: r'sets',
      type: IsarType.long,
    ),
    r'workout': PropertySchema(
      id: 3,
      name: r'workout',
      type: IsarType.object,
      target: r'Timer',
    )
  },
  estimateSize: _intervalTimerEstimateSize,
  serialize: _intervalTimerSerialize,
  deserialize: _intervalTimerDeserialize,
  deserializeProp: _intervalTimerDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {r'Timer': TimerSchema},
  getId: _intervalTimerGetId,
  getLinks: _intervalTimerGetLinks,
  attach: _intervalTimerAttach,
  version: '3.1.0+1',
);

int _intervalTimerEstimateSize(
  IntervalTimer object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      TimerSchema.estimateSize(
          object.preWorkout, allOffsets[Timer]!, allOffsets);
  bytesCount +=
      3 + TimerSchema.estimateSize(object.rest, allOffsets[Timer]!, allOffsets);
  bytesCount += 3 +
      TimerSchema.estimateSize(object.workout, allOffsets[Timer]!, allOffsets);
  return bytesCount;
}

void _intervalTimerSerialize(
  IntervalTimer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Timer>(
    offsets[0],
    allOffsets,
    TimerSchema.serialize,
    object.preWorkout,
  );
  writer.writeObject<Timer>(
    offsets[1],
    allOffsets,
    TimerSchema.serialize,
    object.rest,
  );
  writer.writeLong(offsets[2], object.sets);
  writer.writeObject<Timer>(
    offsets[3],
    allOffsets,
    TimerSchema.serialize,
    object.workout,
  );
}

IntervalTimer _intervalTimerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IntervalTimer(
    preWorkout: reader.readObjectOrNull<Timer>(
          offsets[0],
          TimerSchema.deserialize,
          allOffsets,
        ) ??
        Timer(),
    rest: reader.readObjectOrNull<Timer>(
          offsets[1],
          TimerSchema.deserialize,
          allOffsets,
        ) ??
        Timer(),
    sets: reader.readLong(offsets[2]),
    workout: reader.readObjectOrNull<Timer>(
          offsets[3],
          TimerSchema.deserialize,
          allOffsets,
        ) ??
        Timer(),
  );
  object.isarId = id;
  return object;
}

P _intervalTimerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Timer>(
            offset,
            TimerSchema.deserialize,
            allOffsets,
          ) ??
          Timer()) as P;
    case 1:
      return (reader.readObjectOrNull<Timer>(
            offset,
            TimerSchema.deserialize,
            allOffsets,
          ) ??
          Timer()) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readObjectOrNull<Timer>(
            offset,
            TimerSchema.deserialize,
            allOffsets,
          ) ??
          Timer()) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _intervalTimerGetId(IntervalTimer object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _intervalTimerGetLinks(IntervalTimer object) {
  return [];
}

void _intervalTimerAttach(
    IsarCollection<dynamic> col, Id id, IntervalTimer object) {
  object.isarId = id;
}

extension IntervalTimerQueryWhereSort
    on QueryBuilder<IntervalTimer, IntervalTimer, QWhere> {
  QueryBuilder<IntervalTimer, IntervalTimer, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IntervalTimerQueryWhere
    on QueryBuilder<IntervalTimer, IntervalTimer, QWhereClause> {
  QueryBuilder<IntervalTimer, IntervalTimer, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IntervalTimerQueryFilter
    on QueryBuilder<IntervalTimer, IntervalTimer, QFilterCondition> {
  QueryBuilder<IntervalTimer, IntervalTimer, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterFilterCondition> setsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sets',
        value: value,
      ));
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterFilterCondition>
      setsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sets',
        value: value,
      ));
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterFilterCondition>
      setsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sets',
        value: value,
      ));
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterFilterCondition> setsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sets',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IntervalTimerQueryObject
    on QueryBuilder<IntervalTimer, IntervalTimer, QFilterCondition> {
  QueryBuilder<IntervalTimer, IntervalTimer, QAfterFilterCondition> preWorkout(
      FilterQuery<Timer> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'preWorkout');
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterFilterCondition> rest(
      FilterQuery<Timer> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'rest');
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterFilterCondition> workout(
      FilterQuery<Timer> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'workout');
    });
  }
}

extension IntervalTimerQueryLinks
    on QueryBuilder<IntervalTimer, IntervalTimer, QFilterCondition> {}

extension IntervalTimerQuerySortBy
    on QueryBuilder<IntervalTimer, IntervalTimer, QSortBy> {
  QueryBuilder<IntervalTimer, IntervalTimer, QAfterSortBy> sortBySets() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sets', Sort.asc);
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterSortBy> sortBySetsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sets', Sort.desc);
    });
  }
}

extension IntervalTimerQuerySortThenBy
    on QueryBuilder<IntervalTimer, IntervalTimer, QSortThenBy> {
  QueryBuilder<IntervalTimer, IntervalTimer, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterSortBy> thenBySets() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sets', Sort.asc);
    });
  }

  QueryBuilder<IntervalTimer, IntervalTimer, QAfterSortBy> thenBySetsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sets', Sort.desc);
    });
  }
}

extension IntervalTimerQueryWhereDistinct
    on QueryBuilder<IntervalTimer, IntervalTimer, QDistinct> {
  QueryBuilder<IntervalTimer, IntervalTimer, QDistinct> distinctBySets() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sets');
    });
  }
}

extension IntervalTimerQueryProperty
    on QueryBuilder<IntervalTimer, IntervalTimer, QQueryProperty> {
  QueryBuilder<IntervalTimer, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IntervalTimer, Timer, QQueryOperations> preWorkoutProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preWorkout');
    });
  }

  QueryBuilder<IntervalTimer, Timer, QQueryOperations> restProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rest');
    });
  }

  QueryBuilder<IntervalTimer, int, QQueryOperations> setsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sets');
    });
  }

  QueryBuilder<IntervalTimer, Timer, QQueryOperations> workoutProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workout');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TimerSchema = Schema(
  name: r'Timer',
  id: 3422435319111787164,
  properties: {
    r'hours': PropertySchema(
      id: 0,
      name: r'hours',
      type: IsarType.long,
    ),
    r'minutes': PropertySchema(
      id: 1,
      name: r'minutes',
      type: IsarType.long,
    ),
    r'seconds': PropertySchema(
      id: 2,
      name: r'seconds',
      type: IsarType.long,
    )
  },
  estimateSize: _timerEstimateSize,
  serialize: _timerSerialize,
  deserialize: _timerDeserialize,
  deserializeProp: _timerDeserializeProp,
);

int _timerEstimateSize(
  Timer object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _timerSerialize(
  Timer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hours);
  writer.writeLong(offsets[1], object.minutes);
  writer.writeLong(offsets[2], object.seconds);
}

Timer _timerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Timer();
  object.hours = reader.readLongOrNull(offsets[0]);
  object.minutes = reader.readLongOrNull(offsets[1]);
  object.seconds = reader.readLongOrNull(offsets[2]);
  return object;
}

P _timerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TimerQueryFilter on QueryBuilder<Timer, Timer, QFilterCondition> {
  QueryBuilder<Timer, Timer, QAfterFilterCondition> hoursIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hours',
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> hoursIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hours',
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> hoursEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hours',
        value: value,
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> hoursGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hours',
        value: value,
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> hoursLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hours',
        value: value,
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> hoursBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hours',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> minutesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'minutes',
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> minutesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'minutes',
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> minutesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> minutesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> minutesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> minutesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minutes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> secondsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seconds',
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> secondsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seconds',
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> secondsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seconds',
        value: value,
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> secondsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seconds',
        value: value,
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> secondsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seconds',
        value: value,
      ));
    });
  }

  QueryBuilder<Timer, Timer, QAfterFilterCondition> secondsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seconds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TimerQueryObject on QueryBuilder<Timer, Timer, QFilterCondition> {}
