void main(List<String> arguments) async {
  print('Hello world!');
  // final result = getNames().asyncExpand((event) => getCharacters(fromString: event));
  // await result.forEach((element) {
  //   print(element);
  // });
  await for (final character in getNames().asyncExpand(
    (event) => getCharacters(fromString: event),
  )) {
    print(character);
  }
}

Stream<String> getNames() async* {
  print('1');
  await Future.delayed(const Duration(milliseconds: 200));
  print('2');
  yield 'saqr';
  print('3');
  await Future.delayed(const Duration(seconds: 2));
  print('4');
  yield 'ElFirgany';
  print('5');
  await Future.delayed(const Duration(seconds: 2));
  print('6');
}

Stream<String> getCharacters({required String fromString}) async* {
  for (var i = 0; i < fromString.length; i++) {
    await Future.delayed(const Duration(milliseconds: 300));
    yield fromString[i];
  }
}
