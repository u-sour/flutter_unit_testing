import 'package:flutter/material.dart';

class Counter {
  int value = 0;
  void inc() => value++;
  void des() => value--;
  void incBy2() => value += 2;
}
