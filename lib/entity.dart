part of student_records;

class Entity {
  final ObjectId _id;

  Entity(this._id);

  Entity.fromMap(Map<String, dynamic> json) : _id = json['_id'] as ObjectId;

  ObjectId get id => _id;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '_id': _id,
    };
  }
}
