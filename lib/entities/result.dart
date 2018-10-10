part of student_records;

class ResultEntity extends Entity {
  final ObjectId moduleId;
  final String moduleCode;
  final ObjectId assignmentId;
  final String assignmentTitle;
  final ObjectId studentId;
  final String grade;
  final String feedback;

  ResultEntity(
    ObjectId resultId,
    this.moduleId,
    this.moduleCode,
    this.assignmentId,
    this.assignmentTitle,
    this.studentId,
    this.grade,
    this.feedback,
  ) : super(resultId);

  ResultEntity.fromMap(Map<String, dynamic> map)
      : moduleId = map['moduleId'] as ObjectId,
        moduleCode = map['moduleCode'] as String,
        assignmentId = map['assignmentId'] as ObjectId,
        assignmentTitle = map['assignmentTitle'] as String,
        studentId = map['studentId'] as ObjectId,
        grade = map['grade'] as String,
        feedback = map['feedback'] as String,
        super.fromMap(map);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moduleId': moduleId,
      'moduleCode': moduleCode,
      'assignmentId': assignmentId,
      'assignmentTitle': assignmentTitle,
      'studentId': studentId,
      'grade': grade,
      'feedback': feedback,
    }..addAll(super.toMap());
  }
}
