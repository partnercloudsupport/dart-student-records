part of student_records;

abstract class Specification {
  SelectorBuilder toSelector();

  String toSql();
}

class IdSpecification implements Specification {
  final ObjectId _id;

  IdSpecification(this._id);

  @override
  SelectorBuilder toSelector() {
    return where.id(_id);
  }

  @override
  String toSql() {
    // TODO: implement toSql
  }
}

class PhoneNumberSpecification implements Specification {
  final String phoneNumber;

  PhoneNumberSpecification(this.phoneNumber);

  @override
  SelectorBuilder toSelector() {
    return where.eq('phoneNumber', phoneNumber);
  }

  @override
  String toSql() {
    // TODO: implement toSql
  }
}
