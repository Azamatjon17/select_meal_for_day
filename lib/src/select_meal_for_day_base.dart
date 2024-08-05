// TODO: Put public facing types in this file.

import 'dart:math';

/// Checks if you are awesome. Spoiler: you are.
class SelectMealForDay {
  // Har hafta kuni uchun ovqatlar ro'yxati
  static List<List<String>> meals = [
    // Dushanba kuni uchun
    ['Shurva', 'Lag\'mon', 'Somsa'],

    // Seshanba kuni uchun
    ['Manti', 'Kebab', 'Samsa'],

    // Chorshanba kuni uchun
    ['Plov', 'Qovurdoq', 'Kabob'],

    // Payshanba kuni uchun
    ['Ko\'sa', 'Bifshteks', 'Sho\'rva'],

    // Juma kuni uchun
    ['Palov', 'Mastava', 'Dimlama'],

    // Shanba kuni uchun
    ['Norin', 'Beshbarmak', 'Tovuq go\'shtli lapsha'],

    // Yakshanba kuni uchun
    ['Osh', 'Dimlama', 'Qo\'g\'irma lag\'mon'],
  ];

  static String selectMealForDay(int day) {
    if (day < 8) {
      day = day - 1;
      int random = Random().nextInt(3);
      return meals[day][random];
    } else {
      return 'xato malumot kiritildi';
    }
  }
}
