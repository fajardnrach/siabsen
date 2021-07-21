import 'package:hive_flutter/hive_flutter.dart';

class LocalDatabase {
  static Future<void> init() async {
    await Hive.initFlutter();
    // register adapter here
  }
}
