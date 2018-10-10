import 'dart:async';
import 'dart:io';

import 'package:student_records/student_records.dart';

var repositoryFactory = RepositoryFactory(RepositoryFactoryType.MONGO);
var studentRepository = repositoryFactory.studentRepository;

void main() async {
  var shouldQuit = false;

  while (!shouldQuit) {
    stdout.writeln('*** Main Menu ***');
    stdout.writeln('1 - Create Student');
    stdout.writeln('2 - Read Students');
    stdout.writeln('3 - Delete Student');
    stdout.writeln('0 - Quit Application');
    stdout.write('Please Select A Numerical Option: ');

    switch (stdin.readLineSync()) {
      case '1':
        await createStudent();
        break;
      case '2':
        await readStudents();
        break;
      case '3':
        await deleteStudent();
        break;
      case '0':
        shouldQuit = true;
        break;
    }
  }
}

Future<void> createStudent() async {
  stdout.writeln('*** Create Student ***');

  stdout.write('First Name: ');
  var firstName = stdin.readLineSync();

  stdout.write('Last Name: ');
  var lastName = stdin.readLineSync();

  stdout.write('Date Of Birth (YYYY): ');
  var year = num.parse(stdin.readLineSync());
  stdout.write('Date Of Birth (MM): ');
  var month = num.parse(stdin.readLineSync());
  stdout.write('Date Of Birth (DD): ');
  var day = num.parse(stdin.readLineSync());
  var dateOfBirth = DateTime(year, month, day);

  stdout.write('Phone Number: ');
  var phoneNumber = stdin.readLineSync();

  await studentRepository.add(
    StudentEntity(
      null,
      firstName,
      lastName,
      dateOfBirth,
      phoneNumber,
    ),
  );
}

Future<void> deleteStudent() async {
  stdout.writeln('*** Delete Student ***');

  stdout.write('Phone Number: ');
  var phoneNumber = stdin.readLineSync();

  await studentRepository.removeWhere(
    PhoneNumberSpecification(phoneNumber),
  );
}

Future<void> readStudents() async {
  stdout.writeln('*** Read Students ***');

  var students = await studentRepository.query();

  if (students.length > 0) {
    students.forEach((student) {
      stdout.writeln('${student.toMap()}');
    });
  } else {
    stdout.writeln('No Students Found!');
  }
}
