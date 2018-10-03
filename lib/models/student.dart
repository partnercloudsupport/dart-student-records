import 'package:mongo_dart/mongo_dart.dart';
import 'package:student_records/models/enrolment.dart';
import 'package:student_records/models/person.dart';
import 'package:student_records/models/result.dart';

class Student extends Person {
  final ObjectId studentId;
  final List<Enrolment> enrolments;
  final List<Result> results;

  Student(
    this.studentId,
    String firstName,
    String lastName,
    DateTime dateOfBirth,
    String phoneNumber,
    this.enrolments,
    this.results,
  ) : super(
          firstName,
          lastName,
          dateOfBirth,
          phoneNumber,
        );
}
