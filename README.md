Dev dependency installation
dev_dependencies:
 flutter_test:
  sdk: flutter
 integration_test:
  sdk: flutter
 bloc_test: ^10.0.0

1.counter_bloc.dart
https://gist.github.com/rubywai/93b766c83987749f80a1286d2f6bb554
2.main.dart
https://gist.github.com/rubywai/7c450f5d9811f01b4c7573ed92003b78

Commands 
dart pub global activate coverage
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html\n
open coverage/html/index.html (Mac)
start coverage/html/index.html  
test
1.counter_bloc_test.dart
https://gist.github.com/rubywai/b49a434476b7ca5afbd7b6d967e7b9ff
2.main.test.dart
https://gist.github.com/rubywai/368f03ddac73236253a4caea3bed1528

3.integration test
driver.dart
https://gist.github.com/rubywai/591f3910df61fc254a376d1217235d8b
integration_test.dart
https://gist.github.com/rubywai/fc5802f2b5e7afd16ba7ef205ae40020
flutter drive --driver=integration_test/driver.dart --target=integration_test/integration_test.dart
