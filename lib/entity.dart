part of student_records;

class Entity {
  final ObjectId _id;

  Entity(this._id);

  Entity.fromJson(Map<String, dynamic> json) : _id = json['_id'];

  ObjectId get id => _id;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      '_id': _id,
    };
  }
}
