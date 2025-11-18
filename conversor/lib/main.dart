import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

const request =
    'https://api.freecurrencyapi.com/v1/latest?apikey=fca_live_nNSJpueNH0i2U2ql9dl3oDJ7Vl24R3LT1whEUCUG';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  http.Response response = await http.get(Uri.parse(request));
  print(jsonDecode(response.body));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Container(),
  ));
}
