part of student_records;

class EnrolmentEntity extends Entity {
  final ObjectId runId;
  final ObjectId studentId;

  EnrolmentEntity(
    ObjectId enrolmentId,
    this.runId,
    this.studentId,
  ) : super(enrolmentId);

  EnrolmentEntity.fromJson(Map<String, dynamic> json)
      : runId = json['runId'] as ObjectId,
        studentId = json['studentId'] as ObjectId,
        super.fromJson(json);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'runId': runId,
      'studentId': studentId,
    }..addAll(super.toJson());
  }
}
