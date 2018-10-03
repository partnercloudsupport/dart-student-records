import 'package:student_records/models/result.dart';
import 'package:student_records/models/run.dart';

class Assignment {
  final String assignmentId;
  final Run run;
  final String details;
  final DateTime deadline;
  final List<Result> results;

  Assignment(
    this.assignmentId,
    this.run,
    this.details,
    this.deadline,
    this.results,
  );
}
