// String repeat(String text, [int time = 2]){
//   String res ='';
//   for(int i = 0; i< time; i++){
//     res +=text;
//   }
//   return res;
// }
// void main(){
 
//   String name = 'vlad';
//   int age = 24;
//   double height = 3.33;
//   bool isSyudent = true;
//   var count = 0;
//   var title = 'Dart';
//   var score = 95;
//   var language = 'Dart';
//   final String lang = 'dart';
//   String? city = null;
//   if (city != null){
//     print(city.toUpperCase());
//   }
//   String? nickname = null;
//   String display = nickname ?? 'anonim';
//   print(display);
//   List<String> fruits = ['apple','banan','grusha'];
//   fruits.add('apelsin');
//   print(fruits[0]);
//   print(fruits.length);
//   Map<String, dynamic> person = {'name':'vlad','age':228};
//   print(person['name']);
//   person['sity'] = 'voljsky';
//   List<String> fruits2 = ['apple','banan','grusha'];
//   for (var fruit in fruits2){
//     print(fruit);
//   }
//   print('$language: $score');
//   print('дарова $name tebe $age let');
//   print(age);
//   print(height);
//   print(isSyudent);

 

//   int sqare(int x)=> x*x;

//   void Pet({required String name, String species = 'cot', int age =0}){
//     print('$name - $species, vozrast $age');
//   }
//   Pet(name: 'leha', age: 12);
//   Pet(name: 'barsik', species: 'psina');

//   List<int> numbers = [3,2,5,1,2,3,5];
//   numbers.sort((a,b)=> b-a);
//   print(numbers);
//   List<String> names = ["leha","qwe","vlad"];
//   List<String> upper = names.map((name)=>name.toUpperCase()).toList();
//   print(upper);
//   List<String> LongNames = names.where((name)=>name.length>4).toList();
//   print(LongNames);


//  String greet(String name)=> 'hello, $name';
//   int square(int x)=> x*x;
//   double half(double x)=>x/2;
//   int square2(int x)=>x*x;
//   print(half(1));
//    print(greet('qwe'));
//   print(greet('zxc'));
//   print(repeat("xaxa"));
//     print(repeat("g"));
//     List<int> num = [3,2,1,4];
//     num.sort((a,b)=>b-a);
//     print(num);
// int score2 = 85;
// String grade;
// if (score2 >= 90){
//   grade='A';
// }
// else if(score2>=75){
//   grade="B";
// }
// else {
//   grade = "C";
// }
// print(grade);
// String res = score >=60 ? 'sdal':'ne sdal';
// print(res);
// for (int i=0;i <5; i++){
//   print(i);
// }
// List<String> fruits3 = ['apple','banan','grudha'];
// for(var fruits in fruits3 ){
//   print(fruits);
// }
// int n=0;
// while (n<3){
//   print(n);
//   n++;
// }
// String day ='pn';
// switch (day){
//   case 'sb':
//   case 'vs':
//   print('vihodnoy');
//   break;
//   case 'pn':
//   print("nachalo nedely");
//   break;
//   default:
//   print('rabochy day');
// }

// }





double average(List<int> grades){
  if (grades.isEmpty) return 0;
  int sum = 0;
  for (var grade in grades){
    sum += grade;
  }
  return sum / grades.length;
}
int maxGrade(List<int> grades){
  int max = grades[0];
  for (var grade in grades){
    if(grade>max) max = grade;
  }
  return max;
}
int minGrade(List<int> grades){
  int min = grades[0];
  for (var grade in grades){
    if(grade< min) min = grade;
  }
  return min;
}
String letterGrade(double avg){
if (avg >= 4.5) return 'otlichno';
if (avg >= 3.5) return 'good';
if (avg >= 2.5) return 'norm';
return 'bad';
}
void printStatus({required String name, required List<int> grades}){
  double avg = average(grades);
  print('$name');
  print('ocenki: $grades');
  print('srednee: ${avg.toStringAsFixed(2)}');
  print('max: ${maxGrade(grades)}, min: ${minGrade(grades)}');
  print('itog: ${letterGrade(avg)}');
  print('');
}
void main(){
  Map<String, List<int>> students ={
    'vlad vladov':[5,5,5,5,5],
    'alexey kovalevsky':[2,2,2,2,2,2,2,2,2],
    'artem':[5,3,2,4,3,2,3,5,5,4],
  };
  print('analizator ocenok');
  students.forEach((name,grades){
    printStatus(name: name, grades: grades);
  });

  print('общаяя стат');
  int totalStudents = students.length;
  print('всего студентов: $totalStudents');
  int excellentCount = 0;
  students.forEach((name,grades){
    if(average(grades)>=4.5) excellentCount++;
  });
  print('отличников: $excellentCount из $totalStudents');
}