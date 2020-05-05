import 'package:TestsApp/Counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter checks : ', () {
    test('value starts @ 0', () {
      final counter = Counter();
      expect(counter.getValue(), 0);
    });
    test('Test increment', () {
      final counter = Counter();
      final initVal = counter.getValue();
      counter.increment();
      expect(counter.getValue(), initVal + 1);
    });
    test('Test decrement', () {
      final counter = Counter();
      final initVal = counter.getValue();
      counter.decrement();
      expect(counter.getValue(), initVal - 1);
    });
  });
}
