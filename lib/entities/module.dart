part of student_records;

class ModuleEntity extends Entity {
  final String code;
  final String title;
  final List<ObjectId> runs;

  ModuleEntity(
    ObjectId moduleId,
    this.code,
    this.title, [
    this.runs = const [],
  ]) : super(moduleId);

  ModuleEntity.fromMap(Map<String, dynamic> map)
      : code = map['code'] as String,
        title = map['title'] as String,
        runs = map['runs'] as List<ObjectId>,
        super.fromMap(map);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'title': title,
      'runs': runs,
    }..addAll(super.toMap());
  }
}
