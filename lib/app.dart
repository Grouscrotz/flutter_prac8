import 'package:get_it/get_it.dart';

class MyClass {
  final String name;

  MyClass();

  void greet() {
    print('Привет от $name!');
  }
}

void main(List<String> args) {
  GetIt.I.registerSingleton<MyClass>(
    MyClass(), instanceName: 'my_class',
  );

  // Проверяем, зарегистрирован ли экземпляр с именем 'my_class'
  if (GetIt.I.isRegistered<MyClass>(instanceName: 'my_class'));



  // Попробуем проверить несуществующее имя
  if (!GetIt.I.isRegistered<MyClass>(instanceName: 'unknown')) {
    print('Экземпляр с именем "unknown" не зарегистрирован.');
  }
}