import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'use_login.g.dart';

@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello world';
}
