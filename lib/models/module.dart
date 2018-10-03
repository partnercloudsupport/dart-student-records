import 'package:student_records/models/run.dart';

class Module {
  final String moduleId;
  final String code;
  final String title;
  final List<Run> runs;

  Module(
    this.moduleId,
    this.code,
    this.title,
    this.runs,
  );
}
