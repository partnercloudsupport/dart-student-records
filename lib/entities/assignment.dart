part of student_records;

class AssignmentEntity extends Entity {
  final ObjectId moduleId;
  final String moduleCode;
  final ObjectId runId;
  final String title;
  final String details;
  final DateTime deadline;
  final List<ObjectId> results;

  AssignmentEntity(
    ObjectId assignmentId,
    this.moduleId,
    this.moduleCode,
    this.runId,
    this.title,
    this.details,
    this.deadline, [
    this.results = const [],
  ]) : super(assignmentId);

  AssignmentEntity.fromMap(Map<String, dynamic> map)
      : moduleId = map['moduleId'] as ObjectId,
        moduleCode = map['moduleCode'] as String,
        runId = map['runId'] as ObjectId,
        title = map['title'] as String,
        details = map['details'] as String,
        deadline = map['deadline'] as DateTime,
        results = map['results'] as List<ObjectId>,
        super.fromMap(map);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moduleId': moduleId,
      'moduleCode': moduleCode,
      'runId': runId,
      'title': title,
      'details': details,
      'deadline': deadline,
      'results': results,
    }..addAll(super.toMap());
  }
}
