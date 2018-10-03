import 'package:student_records/models/run.dart';
import 'package:student_records/models/student.dart';

class Enrolment {
  final String enrolmentId;
  final Run run;
  final Student student;

  Enrolment(
    this.enrolmentId,
    this.run,
    this.student,
  );
}
