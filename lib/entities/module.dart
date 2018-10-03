part of student_records;

class ModuleEntity extends Entity {
  final String code;
  final String title;

  ModuleEntity(
    ObjectId moduleId,
    this.code,
    this.title,
  ) : super(moduleId);

  ModuleEntity.fromJson(Map<String, dynamic> json)
      : code = json['code'] as String,
        title = json['title'] as String,
        super.fromJson(json);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'code': code,
      'title': title,
    }..addAll(super.toJson());
  }
}
