import 'package:select_meal_for_day/select_meal_for_day.dart';
import 'package:test/test.dart'; // Replace with your actual import path

void main() {
  group('SelectMealForDay', () {
    test('selectMealForDay returns a valid meal for each day of the week', () {
      for (int day = 1; day <= 7; day++) {
        String meal = SelectMealForDay.selectMealForDay(day);
        expect(meal.isNotEmpty, isTrue, reason: 'Meal should not be empty');
      }
    });

    test('selectMealForDay returns an error message for invalid day', () {
      String result = SelectMealForDay.selectMealForDay(8);
      expect(result, equals('xato malumot kiritildi'));
    });
  });
}
