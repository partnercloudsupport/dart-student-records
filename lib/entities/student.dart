part of student_records;

class StudentEntity extends PersonEntity {
  StudentEntity(
    ObjectId studentId,
    String firstName,
    String lastName,
    DateTime dateOfBirth,
    String phoneNumber,
  ) : super(
          studentId,
          firstName,
          lastName,
          dateOfBirth,
          phoneNumber,
        );

  StudentEntity.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}
