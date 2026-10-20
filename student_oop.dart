
class Student {
  String name;
  String course;
  int yearLevel;
  double _grade;

  Student(this.name, this.course, this.yearLevel, this._grade);

  double getGrade() {
    return _grade;
  }

  void updateGrade(double newGrade) {
    if (newGrade >= 0 && newGrade <= 100) {
      _grade = newGrade;
    }
  }

  void displayInfo() { 
    print('Name: $name');
    print('Course: $course');
    print('Year Level: $yearLevel');
    print('Grade: ${getGrade()}');
  }
}

void main() {
  List<Student> students = [
    Student('Cristopher', 'BSIT', 3, 95.0),
    Student('Challey', 'BSIT', 2, 90.0),
  ];

  for (Student student in students) {
    student.displayInfo();
    print('----------');
  }
}

