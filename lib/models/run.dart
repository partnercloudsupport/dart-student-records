import 'package:student_records/models/assignment.dart';
import 'package:student_records/models/enrolment.dart';
import 'package:student_records/models/lecturer.dart';
import 'package:student_records/models/module.dart';

class Run {
  final String runId;
  final Module module;
  final Lecturer lecturer;
  final String location;
  final String semester;
  final String year;
  final List<Enrolment> enrolments;
  final List<Assignment> assignments;

  Run(
    this.runId,
    this.module,
    this.lecturer,
    this.location,
    this.semester,
    this.year,
    this.enrolments,
    this.assignments,
  );
}
