import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_testing/counter.dart';

void main() {
  test('counter increase must be 1', () {
    //setup
    final counter = Counter();
    // do
    counter.inc();
    // expect
    expect(counter.value, 1);
  });

  test('counter decrease must be -1', () {
    //setup
    final counter = Counter();
    // do
    counter.des();
    // expect
    expect(counter.value, -1);
  });
}
