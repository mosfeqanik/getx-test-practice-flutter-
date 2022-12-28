
import 'package:flutter_test/flutter_test.dart';
import 'package:getx_test_practice/app/modules/home/controllers/home_controller.dart';



void main() {
  
  test('Counter value should be incremented', ()  {
  final homeController = HomeController();
  homeController.increment();
  expect(homeController.count.value, 1);
  });
  test('value should be decremented', () {
    final homeController = HomeController();
    homeController.Decrement();
    expect(homeController.count.value, -1);
  });
}
