import 'package:flutter_test/flutter_test.dart';
import 'dart:async';

void main()  {
  test('unit', () async {
    final aListOfString = <String>[];
    aListOfString.add("hello");
    aListOfString.add("");

    bool isEmpty =  aListOfString.any((s) => s.isEmpty);

    print(isEmpty);

    sumUpToFive("Hi");

    Point.fromJson({'x': 1, 'y': 2});


    print('fetching username...');
    print( getMessage());
  });
}

int sumUpToFive(String greet, {String name = ''}) {
  print('$greet, ${name.isEmpty ? "asdf": name}');
}

class Point {
  num x;
  num y;

  Point(this.x, this.y);

  Point.fromJson(Map<String, num> json): x = json['x'], y = json['y'] {
    print('Point($x, $y)');
  }
}

Future<String> getUserName() {
  return Future.delayed(Duration(seconds: 3), () => 'Jess Yuan');
}

Future<String> getMessage() async {
  var name =  await getUserName();
  return 'Username is: $name';
}
