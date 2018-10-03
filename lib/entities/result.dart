part of student_records;

class ResultEntity extends Entity {
  final ObjectId assignmentId;
  final ObjectId studentId;
  final String grade;
  final String feedback;

  ResultEntity(
    ObjectId resultId,
    this.assignmentId,
    this.studentId,
    this.grade,
    this.feedback,
  ) : super(resultId);

  ResultEntity.fromJson(Map<String, dynamic> json)
      : assignmentId = json['assignmentId'] as ObjectId,
        studentId = json['studentId'] as ObjectId,
        grade = json['grade'] as String,
        feedback = json['feedback'] as String,
        super.fromJson(json);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'assignmentId': assignmentId,
      'studentId': studentId,
      'grade': grade,
      'feedback': feedback,
    }..addAll(super.toJson());
  }
}
