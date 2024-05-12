import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_testing/counter.dart';

void main() {
  late Counter counter;

  setUp(() {
    counter = Counter();
  });

  group('main', () {
    test('counter increase must be 1', () {
      // do
      counter.inc();
      // expect
      expect(counter.value, 1);
    });

    test('counter decrease must be -1', () {
      // do
      counter.des();
      // expect
      expect(counter.value, -1);
    });
  });

  test('counter increase must 2', () {
    // do
    counter.incBy2();
    // expect
    expect(counter.value, 2);
  });
}
