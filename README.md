Dev dependency installation</br>
dev_dependencies:</br>
 flutter_test:</br>
  sdk: flutter</br>
 integration_test:</br>
  sdk: flutter</br>
 bloc_test: ^10.0.0</br>

1.counter_bloc.dart</br>
https://gist.github.com/rubywai/93b766c83987749f80a1286d2f6bb554</br>
2.main.dart</br>
https://gist.github.com/rubywai/7c450f5d9811f01b4c7573ed92003b78</br>

Commands </br>
dart pub global activate coverage</br>
flutter test --coverage</br>
genhtml coverage/lcov.info -o coverage/html\n</br>
open coverage/html/index.html (Mac)</br>
start coverage/html/index.html  </br>
test</br>
1.counter_bloc_test.dart</br>
https://gist.github.com/rubywai/b49a434476b7ca5afbd7b6d967e7b9ff</br>
2.main.test.dart</br>
https://gist.github.com/rubywai/368f03ddac73236253a4caea3bed1528</br>
</br>
3.integration test</br>
driver.dart</br>
https://gist.github.com/rubywai/591f3910df61fc254a376d1217235d8b</br>
integration_test.dart</br>
https://gist.github.com/rubywai/fc5802f2b5e7afd16ba7ef205ae40020</br>
flutter drive --driver=integration_test/driver.dart --target=integration_test/integration_test.dart</br>
