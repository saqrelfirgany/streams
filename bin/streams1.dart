void main(List<String> arguments) async {
  print('Hello world!');
  await for (final number in getNumbers()) {
    print(number);
  }
  try {
    await for (final name in getNames()) {
      print(name);
    }
  } catch (e) {
    print(e);
  }
}

Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'saqr';
  throw Exception('Something went wrong');
}