part of student_records;

class RunEntity extends Entity {
  final ObjectId moduleId;
  final String moduleCode;
  final ObjectId lecturerId;
  final String location;
  final String semester;
  final String year;
  final List<ObjectId> assignments;
  final List<ObjectId> students;

  RunEntity(
    ObjectId runId,
    this.moduleId,
    this.moduleCode,
    this.lecturerId,
    this.location,
    this.semester,
    this.year, [
    this.assignments = const [],
    this.students = const [],
  ]) : super(runId);

  RunEntity.fromMap(Map<String, dynamic> map)
      : moduleId = map['moduleId'] as ObjectId,
        moduleCode = map['moduleCode'] as String,
        lecturerId = map['lecturerId'] as ObjectId,
        location = map['location'] as String,
        semester = map['semester'] as String,
        year = map['year'] as String,
        assignments = map['assignments'] as List<ObjectId>,
        students = map['students'] as List<ObjectId>,
        super.fromMap(map);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moduleId': moduleId,
      'moduleCode': moduleCode,
      'lecturerId': lecturerId,
      'location': location,
      'semester': semester,
      'year': year,
      'assignments': assignments,
      'students': students,
    }..addAll(super.toMap());
  }
}
