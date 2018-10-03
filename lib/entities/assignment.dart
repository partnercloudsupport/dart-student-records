part of student_records;

class AssignmentEntity extends Entity {
  final ObjectId runId;
  final String details;
  final DateTime deadline;

  AssignmentEntity(
    ObjectId assignmentId,
    this.runId,
    this.details,
    this.deadline,
  ) : super(assignmentId);

  AssignmentEntity.fromJson(Map<String, dynamic> json)
      : runId = json['runId'] as ObjectId,
        details = json['details'] as String,
        deadline = json['deadline'] == null
            ? null
            : DateTime.parse(json['deadline'] as String),
        super.fromJson(json);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'runId': runId,
      'details': details,
      'deadline': deadline?.toIso8601String()
    }..addAll(super.toJson());
  }
}
