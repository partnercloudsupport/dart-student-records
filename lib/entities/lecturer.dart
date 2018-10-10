part of student_records;

class LecturerEntity extends PersonEntity {
  final List<LecturerEntityRun> runs;

  LecturerEntity(
    ObjectId lecturerId,
    String firstName,
    String lastName,
    DateTime dateOfBirth,
    String phoneNumber, [
    this.runs = const [],
  ]) : super(
          lecturerId,
          firstName,
          lastName,
          dateOfBirth,
          phoneNumber,
        );

  LecturerEntity.fromMap(Map<String, dynamic> map)
      : runs = (map['runs'] as List<Map<String, dynamic>>)
            .map((map) => LecturerEntityRun.fromMap(map))
            .toList(),
        super.fromMap(map);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runs': runs.map((run) => run.toMap()).toList(),
    }..addAll(super.toMap());
  }
}

class LecturerEntityRun {
  final ObjectId moduleId;
  final String moduleCode;
  final ObjectId runId;

  LecturerEntityRun(
    this.moduleId,
    this.moduleCode,
    this.runId,
  );

  LecturerEntityRun.fromMap(Map<String, dynamic> map)
      : moduleId = map['moduleId'] as ObjectId,
        moduleCode = map['moduleCode'] as String,
        runId = map['runId'] as ObjectId;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moduleId': moduleId,
      'moduleCode': moduleCode,
      'runId': runId,
    };
  }
}
