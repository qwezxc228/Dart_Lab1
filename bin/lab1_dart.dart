String repeat(String text, [int time = 2]){
  String res ='';
  for(int i = 0; i< time; i++){
    res +=text;
  }
  return res;
}
void main(){
 
  String name = 'vlad';
  int age = 24;
  double height = 3.33;
  bool isSyudent = true;
  var count = 0;
  var title = 'Dart';
  var score = 95;
  var language = 'Dart';
  final String lang = 'dart';
  String? city = null;
  if (city != null){
    print(city.toUpperCase());
  }
  String? nickname = null;
  String display = nickname ?? 'anonim';
  print(display);
  List<String> fruits = ['apple','banan','grusha'];
  fruits.add('apelsin');
  print(fruits[0]);
  print(fruits.length);
  Map<String, dynamic> person = {'name':'vlad','age':228};
  print(person['name']);
  person['sity'] = 'voljsky';
  List<String> fruits2 = ['apple','banan','grusha'];
  for (var fruit in fruits2){
    print(fruit);
  }
  print('$language: $score');
  print('дарова $name tebe $age let');
  print(age);
  print(height);
  print(isSyudent);

 

  int sqare(int x)=> x*x;

  void Pet({required String name, String species = 'cot', int age =0}){
    print('$name - $species, vozrast $age');
  }
  Pet(name: 'leha', age: 12);
  Pet(name: 'barsik', species: 'psina');

  List<int> numbers = [3,2,5,1,2,3,5];
  numbers.sort((a,b)=> b-a);
  print(numbers);
  List<String> names = ["leha","qwe","vlad"];
  List<String> upper = names.map((name)=>name.toUpperCase()).toList();
  print(upper);
  List<String> LongNames = names.where((name)=>name.length>4).toList();
  print(LongNames);


 String greet(String name)=> 'hello, $name';
  int square(int x)=> x*x;
  double half(double x)=>x/2;
  int square2(int x)=>x*x;
  print(half(1));
   print(greet('qwe'));
  print(greet('zxc'));
  print(repeat("xaxa"));
    print(repeat("g"));
    List<int> num = [3,2,1,4];
    num.sort((a,b)=>b-a);
    print(num);
int score2 = 85;
String grade;
if (score2 >= 90){
  grade='A';
}
else if(score2>=75){
  grade="B";
}
else {
  grade = "C";
}
print(grade);
String res = score >=60 ? 'sdal':'ne sdal';
print(res);
for (int i=0;i <5; i++){
  print(i);
}
List<String> fruits3 = ['apple','banan','grudha'];
for(var fruits in fruits3 ){
  print(fruits);
}
int n=0;
while (n<3){
  print(n);
  n++;
}
String day ='pn';
switch (day){
  case 'sb':
  case 'vs':
  print('vihodnoy');
  break;
  case 'pn':
  print("nachalo nedely");
  break;
  default:
  print('rabochy day');
}

}
