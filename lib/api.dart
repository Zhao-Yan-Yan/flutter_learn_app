import 'package:flutter/services.dart';

Future<String> get() async => await rootBundle.loadString('assets/a.json');
