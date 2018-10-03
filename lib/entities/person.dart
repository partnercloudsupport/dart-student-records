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

  PersonEntity.fromJson(Map<String, dynamic> json)
      : firstName = json['firstName'] as String,
        lastName = json['lastName'] as String,
        dateOfBirth = json['dateOfBirth'] == null
            ? null
            : DateTime.parse(json['dateOfBirth'] as String),
        phoneNumber = json['phoneNumber'] as String,
        super.fromJson(json);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth?.toIso8601String(),
      'phoneNumber': phoneNumber
    }..addAll(super.toJson());
  }
}
