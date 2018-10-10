part of student_records;

class PersonEntity extends Entity {
  final String firstName;
  final String lastName;
  final DateTime dateOfBirth;
  final String phoneNumber;

  PersonEntity(
    ObjectId personId,
    this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.phoneNumber,
  ) : super(personId);

  PersonEntity.fromMap(Map<String, dynamic> map)
      : firstName = map['firstName'] as String,
        lastName = map['lastName'] as String,
        dateOfBirth = map['dateOfBirth'] as DateTime,
        phoneNumber = map['phoneNumber'] as String,
        super.fromMap(map);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth,
      'phoneNumber': phoneNumber
    }..addAll(super.toMap());
  }
}
