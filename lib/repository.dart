part of student_records;

abstract class Repository<T> {
  Future<void> add(T value);

  Future<void> addAll(Iterable<T> iterable);

  Future<Iterable<T>> query([Specification specification]);

  Future<void> remove(T value);

  Future<void> removeWhere(Specification specification);

  Future<void> update(T value);
}

enum RepositoryFactoryType {
  MONGO,
  ORACLE,
}

abstract class RepositoryFactory {
  Repository<StudentEntity> get studentRepository;

  factory RepositoryFactory(RepositoryFactoryType type) {
    switch (type) {
      case RepositoryFactoryType.MONGO:
        return MongoRepositoryFactory();
      case RepositoryFactoryType.ORACLE:
        return OracleRepositoryFactory();
      default:
        return null;
    }
  }
}

class MongoRepositoryFactory implements RepositoryFactory {
  @override
  Repository<StudentEntity> get studentRepository {
    return MongoStudentRepository();
  }
}

class OracleRepositoryFactory implements RepositoryFactory {
  @override
  Repository<StudentEntity> get studentRepository {
    return OracleStudentRepository();
  }
}

abstract class MongoRepository<T extends Entity> implements Repository<T> {
  final Db db = Db('mongodb://localhost/student-records');

  String get collectionName;

  @override
  Future<void> add(T value) async {
    await addAll([value]);
  }

  @override
  Future<void> addAll(Iterable<T> iterable) async {
    try {
      await db.open();

      var collection = db.collection(collectionName);

      await iterable.map((value) => value.toMap()).forEach((value) async {
        await collection.save(value);
      });
    } finally {
      await db.close();
    }
  }

  @override
  Future<void> remove(T value) async {
    await removeWhere(IdSpecification(value.id));
  }

  @override
  Future<void> removeWhere(Specification specification) async {
    try {
      await db.open();

      var collection = db.collection(collectionName);

      await collection.remove(specification.toSelector());
    } finally {
      await db.close();
    }
  }

  @override
  Future<void> update(T value) async {
    try {
      await db.open();

      var collection = db.collection(collectionName);

      await collection.save(value.toMap());
    } finally {
      await db.close();
    }
  }
}

abstract class OracleRepository<T extends Entity> implements Repository<T> {}

class MongoStudentRepository extends MongoRepository<StudentEntity> {
  String get collectionName => 'students';

  @override
  Future<Iterable<StudentEntity>> query([Specification specification]) async {
    try {
      await db.open();

      var collection = db.collection(collectionName);

      return await collection
          .find(specification?.toSelector())
          .map((json) => StudentEntity.fromMap(json))
          .toList();
    } finally {
      await db.close();
    }
  }
}

class OracleStudentRepository extends OracleRepository<StudentEntity> {
  @override
  Future<void> add(StudentEntity value) {
    // TODO: implement add
  }

  @override
  Future<void> addAll(Iterable<StudentEntity> iterable) {
    // TODO: implement addAll
  }

  @override
  Future<Iterable<StudentEntity>> query([Specification specification]) {
    // TODO: implement query
  }

  @override
  Future<void> remove(StudentEntity value) {
    // TODO: implement remove
  }

  @override
  Future<void> removeWhere(Specification specification) {
    // TODO: implement removeWhere
  }

  @override
  Future<void> update(StudentEntity value) {
    // TODO: implement update
  }
}
