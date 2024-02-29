import 'dart:convert';

class Student {
  String name;
  String id;
  int age;
  String department;
  String level;

  Student(this.name, this.id, this.age, this.department, this.level);

  Map toJson() => {
        'name': name,
        'id': id,
        'age': age,
        'department': department,
        'level': level
      };
}

main() {
  Student student =
      Student('Maria', '15AF132091', 23, 'Computer science', '400');

  String jsonStu = jsonEncode(student);
  print(jsonStu);
}
