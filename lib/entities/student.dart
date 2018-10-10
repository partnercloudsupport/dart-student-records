part of student_records;

class StudentEntity extends PersonEntity {
  final List<StudentEntityRun> runs;
  final List<StudentEntityResult> results;

  StudentEntity(
    ObjectId studentId,
    String firstName,
    String lastName,
    DateTime dateOfBirth,
    String phoneNumber, [
    this.runs = const [],
    this.results = const [],
  ]) : super(
          studentId,
          firstName,
          lastName,
          dateOfBirth,
          phoneNumber,
        );

  StudentEntity.fromMap(Map<String, dynamic> map)
      : runs = (map['runs'] as List<Map<String, dynamic>>)
            .map((map) => StudentEntityRun.fromMap(map))
            .toList(),
        results = (map['results'] as List<Map<String, dynamic>>)
            .map((map) => StudentEntityResult.fromMap(map))
            .toList(),
        super.fromMap(map);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runs': runs.map((run) => run.toMap()).toList(),
      'results': results.map((result) => result.toMap()).toList(),
    }..addAll(super.toMap());
  }
}

class StudentEntityRun {
  final ObjectId moduleId;
  final String moduleCode;
  final ObjectId runId;

  StudentEntityRun(
    this.moduleId,
    this.moduleCode,
    this.runId,
  );

  StudentEntityRun.fromMap(Map<String, dynamic> map)
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

class StudentEntityResult {
  final ObjectId moduleId;
  final String moduleCode;
  final ObjectId assignmentId;
  final String assignmentTitle;
  final ObjectId resultId;
  final String resultGrade;
  final String resultFeedback;

  StudentEntityResult(
    this.moduleId,
    this.moduleCode,
    this.assignmentId,
    this.assignmentTitle,
    this.resultId,
    this.resultGrade,
    this.resultFeedback,
  );

  StudentEntityResult.fromMap(Map<String, dynamic> map)
      : moduleId = map['moduleId'] as ObjectId,
        moduleCode = map['moduleCode'] as String,
        assignmentId = map['assignmentId'] as ObjectId,
        assignmentTitle = map['assignmentTitle'] as String,
        resultId = map['resultId'] as ObjectId,
        resultGrade = map['resultGrade'] as String,
        resultFeedback = map['resultFeedback'] as String;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moduleId': moduleId,
      'moduleCode': moduleCode,
      'assignmetId': assignmentId,
      'assignmentTitle': assignmentTitle,
      'resultId': resultId,
      'resultGrade': resultGrade,
      'resultFeedback': resultFeedback,
    };
  }
}
