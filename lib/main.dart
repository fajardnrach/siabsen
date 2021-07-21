import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:simas/data/local/local_database.dart';
import 'package:simas/widget/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // init database
  await LocalDatabase.init();
  // init localization
  await initializeDateFormatting('id_ID', null);
  runApp(MyApp());
}
