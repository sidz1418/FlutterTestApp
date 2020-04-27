import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App test', () {
    final counterTextFinder = find.byValueKey('counterText');
    final incrementButton = find.byValueKey('incrementButton');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) driver.close();
    });

    test('starts @ 0', () async {
      expect(await driver.getText(counterTextFinder), '0');
    });

    test('increments counter', () async {
      await driver.tap(incrementButton);
      expect(await driver.getText(counterTextFinder), '1');
    });
  });
}
