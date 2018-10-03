import 'package:student_records/models/assignment.dart';
import 'package:student_records/models/student.dart';

class Result {
  final String resultId;
  final Assignment assignment;
  final Student student;
  final String grade;
  final String feedback;

  Result(
    this.resultId,
    this.assignment,
    this.student,
    this.grade,
    this.feedback,
  );
}
