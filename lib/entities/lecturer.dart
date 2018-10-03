part of student_records;

class LecturerEntity extends PersonEntity {
  LecturerEntity(
    ObjectId lecturerId,
    String firstName,
    String lastName,
    DateTime dateOfBirth,
    String phoneNumber,
  ) : super(
          lecturerId,
          firstName,
          lastName,
          dateOfBirth,
          phoneNumber,
        );

  LecturerEntity.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}
