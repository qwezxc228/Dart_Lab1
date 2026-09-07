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
  print(
    city.toUpperCase(),

  );
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




String greet(String name){
  return 'darova, $name';
}


int sqare(int x)=> x*x;

void Pet({required String name, String species = 'cot', int age =0}){
  print('$name - $species, vozrast $age');
}
Pet(name: 'leha',age:12);
Pet(name: 'barsik',species: 'psina');


List<int> numbers = [3,2,5,1,2,3,5];
numbers.sort((a,b)=> b-a);
print(numbers);


}
