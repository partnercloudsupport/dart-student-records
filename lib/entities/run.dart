part of student_records;

class RunEntity extends Entity {
  final ObjectId moduleId;
  final ObjectId lecturerId;
  final String location;
  final String semester;
  final String year;

  RunEntity(
    ObjectId runId,
    this.moduleId,
    this.lecturerId,
    this.location,
    this.semester,
    this.year,
  ) : super(runId);

  RunEntity.fromJson(Map<String, dynamic> json)
      : moduleId = json['moduleId'] as ObjectId,
        lecturerId = json['lecturerId'] as ObjectId,
        location = json['location'] as String,
        semester = json['semester'] as String,
        year = json['year'] as String,
        super.fromJson(json);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'moduleId': moduleId,
      'lecturerId': lecturerId,
      'location': location,
      'semester': semester,
      'year': year,
    }..addAll(super.toJson());
  }
}
