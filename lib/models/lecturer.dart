import 'package:student_records/models/person.dart';
import 'package:student_records/models/run.dart';

class Lecturer extends Person {
  final String lecturerId;
  final List<Run> runs;

  Lecturer(
    this.lecturerId,
    String firstName,
    String lastName,
    DateTime dateOfBirth,
    String phoneNumber,
    this.runs,
  ) : super(
          firstName,
          lastName,
          dateOfBirth,
          phoneNumber,
        );
}
